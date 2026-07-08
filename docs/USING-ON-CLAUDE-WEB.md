# Using This Kit on claude.ai (Web)

This kit was built for Claude Code, but every skill under `.claude/skills/` follows the standard [Agent Skills](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview) format — a `SKILL.md` with YAML frontmatter, plus optional reference files. That format is portable: claude.ai (the web/desktop app) can load the same skills directly, on Pro, Max, Team, and Enterprise plans with code execution enabled.

## What works on the web, and what doesn't

The pipeline splits cleanly at the point where work stops being "write a document" and starts being "write and run real files on disk":

| Stage | Skill | Works on claude.ai web? |
|---|---|---|
| Discover | `research`, `persona`, `competitor` | Yes — pure document generation |
| Define | `lean-canvas`, `prd`, `roadmap` | Yes — pure document generation |
| Design | `ui` | Yes — produces a spec, not code |
| Build | `build`, `frontend`, `backend`, `database` | Partial — Claude can write code in a chat/artifact, but claude.ai has no persistent local filesystem or git repo to build a real, runnable project against |
| Build | `debug` | Partial — works against code pasted into the conversation; can't drive a real running process |
| Deploy | `deploy` | No — needs a local shell and CLI tools (`vercel`, `railway`) that claude.ai can't reach |

**In short:** claude.ai is a strong fit for the planning half of the pipeline (`research` → `ui`). For the build-and-ship half, use [Claude Code](https://claude.com/claude-code) — that's what this repo was designed around, and it's where `/build` through `/deploy` actually run.

A common pattern: do `research → prd → roadmap → ui` on the web (fast, no terminal needed, good for planning on a phone or between meetings), then hand the resulting documents to Claude Code to build and deploy.

## Uploading the skill

**One upload, not fourteen.** [mvp-os-skills](https://github.com/peter-tnc-453/mvp-os-skills) packages the whole pipeline as a single `mvp-os.zip` — a routing `SKILL.md` at the root, plus one reference file per stage that Claude opens only when that stage is actually relevant. claude.ai requires exactly one `SKILL.md` per uploaded zip (uploading a zip of the whole `.claude/skills/` folder — e.g. via Finder's "Compress" on multiple selected folders — fails, since that has thirteen), which is exactly the problem this packaging avoids.

1. Download `mvp-os.zip` from [mvp-os-skills](https://github.com/peter-tnc-453/mvp-os-skills).
2. Go to **claude.ai → Settings → Customize → Skills → Upload**.
3. Upload `mvp-os.zip`. Claude reads its `SKILL.md` automatically and shows the skill's name, description, and license.

If you'd rather install only one or two stages instead of the whole pipeline, `mvp-os-skills` also keeps the old one-zip-per-stage packaging under `advanced-individual-skills/` — most people won't need it.

## Using the skill

Once uploaded, it activates itself — Claude decides to use it based on the `description` field in its frontmatter, the same way it does in Claude Code. You don't need slash-command syntax in the web app; just describe what you want:

```
I have an idea: [your MVP idea in one sentence]. Help me write a research brief for it.
```

Claude will recognize this matches the skill's `research` stage and open that reference file. If it doesn't pick the skill up on its own, name it directly: "Use the MVP OS skill on this idea."

## Reference

- [How to create custom skills — Claude Help Center](https://support.claude.com/en/articles/12512198-how-to-create-custom-skills)
- [Use skills in Claude — Claude Help Center](https://support.claude.com/en/articles/12512180-use-skills-in-claude)
- [Agent Skills overview — Claude Platform Docs](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview)
