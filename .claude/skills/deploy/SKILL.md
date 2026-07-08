---
name: deploy
description: Ships the verified MVP to a live URL — static/frontend-only projects go to Vercel, projects with a backend go to Railway. Use only after /debug confirms the build works locally; deploying an unverified build just moves the debugging onto a slower feedback loop.
license: MIT
metadata:
  phase: deploy
  category: engineering
---
# Deploy

Deploy is the last station: **Idea → Research → PRD → Roadmap → UI → Build → Debug → Deploy**. Its job is to get a working build a public URL, not to fix things that aren't working yet.

## When to Use

- The MVP has been verified locally — every screen state confirmed, every endpoint checked directly
- The class/demo needs a shareable link, not just a local `localhost` window

## When NOT to Use

- Something is still broken locally — go to `/debug` first; a live deploy adds a slower feedback loop (build logs, cold starts, env var mismatches) on top of a bug that's faster to catch locally
- No internet/time for account setup mid-class — fall back to a screen recording of the local run instead of burning class time on a first-time platform login

## Instructions

1. **Pick the platform by what was built** (this decision is scripted for you, not a judgment call each time):
   - **Static / frontend-only** (no backend, no persisted data) → **Vercel**
   - **Has a backend / API** (the `/backend` skill was used) → **Railway**
2. **Confirm prerequisites once, before the live moment:** the platform CLI installed and logged in (`vercel login` / `railway login`), and — for Railway — any environment variables the backend needs (database URL, API keys) already set in the project dashboard. Do this rehearsal *before* class, not during it.
3. **Run `scripts/deploy.sh <vercel|railway>`** from the project root — it detects a `package.json`/build step if present and runs the matching deploy command. Read its output for the live URL; don't assume success from "no error" alone.
4. **Verify the live URL directly** — open it, click the primary action, exactly like the local verification in `/frontend`/`/backend`. A build that works locally can still fail live (missing env var, wrong build command) — the only proof it shipped is opening the actual link.
5. **If the live deploy fails and there's no time to debug it live**, fall back immediately to the last verified local run (or a pre-recorded run) rather than spending the remaining class time troubleshooting a platform-specific error.

## Output Contract

The live URL, the platform used, and a one-line confirmation that the URL was opened and the primary action verified working — not just that the deploy command exited without error.

## Quality Checklist

- [ ] Local build was fully verified before this step started
- [ ] Platform choice matches what was actually built (static → Vercel, has backend → Railway)
- [ ] CLI login and required env vars were confirmed *before* the live moment, not during it
- [ ] The live URL itself was opened and the primary action tested — not inferred from deploy-command exit code
- [ ] A fallback (previous verified run / recording) exists in case the live deploy fails under time pressure
