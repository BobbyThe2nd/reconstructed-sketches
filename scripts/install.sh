#!/usr/bin/env bash
set -euo pipefail

repository_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
codex_root="${CODEX_HOME:-"$HOME/.codex"}"
install_path="$codex_root/skills/reconstructed-sketches"

mkdir -p "$install_path"
cp "$repository_root/.github/skills/reconstructed-sketches/SKILL.md" "$install_path/SKILL.md"
printf 'Installed reconstructed-sketches to %s\n' "$install_path"
