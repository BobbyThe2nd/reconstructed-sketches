#!/usr/bin/env bash
set -euo pipefail

repository_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repository_root"

required=(
  README.md
  CONTRIBUTING.md
  docs/guides/PERSPECTIVE_RULES.md
  docs/guides/GEOMETRY_GUIDE.md
  docs/guides/LINE_QUALITY.md
  docs/guides/SHADING_AND_COLOR.md
  docs/guides/SUBJECT_GUIDE.md
  docs/guides/STYLE_PRESETS.md
  docs/guides/TRANSFORMATION_PIPELINE.md
  docs/guides/NEGATIVE_RULES.md
  examples/EXAMPLES.md
  .github/skills/reconstructed-sketches/SKILL.md
)

for file in "${required[@]}"; do
  test -s "$file" || { printf 'Missing or empty: %s\n' "$file" >&2; exit 1; }
done

python3 - <<'PY'
import pathlib, re
root = pathlib.Path('.')
pattern = re.compile(r'(?<!!)\[[^]]*\]\(([^)]+)\)')
problems = []
for source in root.rglob('*.md'):
    for target in pattern.findall(source.read_text(encoding='utf-8')):
        target = target.split('#', 1)[0].strip()
        if not target or '://' in target or target.startswith('mailto:'):
            continue
        if not (source.parent / target).exists():
            problems.append(f'{source}: {target}')
if problems:
    raise SystemExit('Broken local links:\n' + '\n'.join(problems))
print('Repository validation passed.')
PY
