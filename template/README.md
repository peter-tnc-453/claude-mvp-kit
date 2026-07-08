# Templates Index

Most templates live next to the skill that uses them, so they stay in sync with the skill's instructions:

| Artifact | Template | Example |
|---|---|---|
| Persona | `.claude/skills/persona/references/TEMPLATE.md` | `.claude/skills/persona/references/EXAMPLE.md` |
| Competitor analysis | `.claude/skills/competitor/references/TEMPLATE.md` | `.claude/skills/competitor/references/EXAMPLE.md` |
| Lean canvas | `.claude/skills/lean-canvas/references/TEMPLATE.md` (+ `html-template.html` for a visual render) | `.claude/skills/lean-canvas/references/EXAMPLE.md` |
| PRD | `.claude/skills/prd/references/TEMPLATE.md` | `.claude/skills/prd/references/EXAMPLE.md` |
| User stories | `.claude/skills/user-story/references/TEMPLATE.md` | `.claude/skills/user-story/references/EXAMPLE.md` |

Two templates that don't have a source skill folder of their own live here instead, because `/research` and `/roadmap` are composite skills built on top of several smaller ones:

- `research-brief-template.md` — the combined output shape for `/research`
- `roadmap-template.md` — the combined output shape for `/roadmap`

You generally won't open these directly — the skills fill them in for you. They're here for the moments you want to see the shape before running the skill, or want to hand-fill one without invoking Claude Code at all.
