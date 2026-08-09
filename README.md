# reconstructed-sketches

> A GitHub-ready visual-direction kit for recognizable drawings with deliberately reconstructed, quietly impossible space.

A reusable visual-direction repository for turning a photo of a building, object, vehicle, or tool into a hand-drawn study with intentionally reconstructed space. It favors recognition first, then quietly impossible geometry: extra visible faces, conflicting vanishing systems, and depth that behaves more like a remembered model than a camera.

## What this repository is for

Use these files to brief an artist, direct an image model, review outputs, or build a consistent illustration workflow. The desired result is recognizable but not conventionally logical: a chair may reveal an extra side plane; a distant wheel may be larger than a near one; a roof may obey a different vanishing system from its walls.

## Quick start

1. Read [Perspective rules](docs/guides/PERSPECTIVE_RULES.md) and choose two or three spatial interventions.
2. Simplify the subject with the [geometry guide](docs/guides/GEOMETRY_GUIDE.md).
3. Apply the [line](docs/guides/LINE_QUALITY.md) and [color](docs/guides/SHADING_AND_COLOR.md) directions.
4. Select a [preset](docs/guides/STYLE_PRESETS.md), then follow the [transformation pipeline](docs/guides/TRANSFORMATION_PIPELINE.md).
5. Validate against the [negative rules](docs/guides/NEGATIVE_RULES.md) before delivery.

## Repository layout

The core guides intentionally live at the repository root so they are easy to browse, link, and reuse in prompts. GitHub-specific collaboration material lives in `.github/`.

```text
reconstructed-sketches/
├── .github/
│   ├── ISSUE_TEMPLATE/       # Structured feedback and change requests
│   ├── skills/               # Portable Codex skill
│   └── workflows/            # Documentation integrity check
├── docs/guides/              # The complete visual-direction system
├── examples/                 # Ready-to-reuse briefs
├── scripts/                  # Installation and validation utilities
├── assets/                   # Reserved for original supporting assets
├── README.md                 # Start here
├── CONTRIBUTING.md
└── LICENSE
```

## Publish on GitHub

This package is already initialized on a local `main` branch. Create an empty GitHub repository named `reconstructed-sketches`, then connect and push it:

```bash
git remote add origin https://github.com/YOUR-ACCOUNT/reconstructed-sketches.git
git push -u origin main
```

GitHub will render this README automatically. Suggested repository description: **“A visual-direction kit for hand-drawn geometric studies with controlled impossible perspective.”**

## Install as a Codex skill

From the repository root, run:

```bash
./scripts/install.sh
```

It installs the portable skill into your local Codex skills folder. Confirm the repository remains valid at any time with `./scripts/validate.sh`.

## Core principles

- Preserve the subject's identity before increasing spatial strangeness.
- Treat adjacent planes as independently reconstructed, not as a single camera projection.
- Show construction: alignment lines, overrun edges, redraws, and small proportion corrections stay visible.
- Reduce surfaces to readable primitives and structural rhythms.
- Keep color muted, paper present, and shadows descriptive rather than photographic.

## File map

| File | Purpose |
| --- | --- |
| [docs/guides/](docs/guides/) | The perspective, geometry, line, color, subject, preset, pipeline, and negative-rule guides. |
| [examples/EXAMPLES.md](examples/EXAMPLES.md) | Compact briefs and prompt examples. |
| [scripts/install.sh](scripts/install.sh) | Installs the skill locally. |
| [scripts/validate.sh](scripts/validate.sh) | Checks required files and local Markdown links. |
| [.github/skills/reconstructed-sketches/SKILL.md](.github/skills/reconstructed-sketches/SKILL.md) | Portable assistant skill. |

## License

MIT. See [LICENSE](LICENSE).
