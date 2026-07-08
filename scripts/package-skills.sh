#!/usr/bin/env bash
# Zips each skill folder individually for upload to claude.ai (Settings > Customize > Skills > Upload).
# Each zip must contain the skill's folder at its root — this script does that per skill.
# Usage: scripts/package-skills.sh
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SKILLS_DIR="$ROOT/.claude/skills"
OUT_DIR="$ROOT/dist/skills-zip"

rm -rf "$OUT_DIR"
mkdir -p "$OUT_DIR"

for skill_path in "$SKILLS_DIR"/*/; do
  name="$(basename "$skill_path")"
  ( cd "$SKILLS_DIR" && zip -r -q "$OUT_DIR/$name.zip" "$name" )
  echo "Packaged $name -> dist/skills-zip/$name.zip"
done

echo
echo "Done. Upload the zip(s) you need at: claude.ai -> Settings -> Customize -> Skills -> Upload."
echo "Note: build/frontend/backend/database/debug/deploy write and run real files and shell commands —"
echo "they work best in Claude Code, not the web app. Upload research/persona/competitor/lean-canvas/"
echo "prd/roadmap/ui to claude.ai for the planning half of the pipeline."
