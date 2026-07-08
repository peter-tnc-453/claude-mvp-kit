---
name: frontend
description: Writes the actual UI code for one screen from the /ui spec, against already-verified backend endpoints. Use when /build dispatches frontend work, or standalone for a UI-only MVP with no backend.
license: MIT
metadata:
  phase: build
  category: engineering
---
# Frontend

## When to Use

- `/build` has decided the stack and this screen needs UI code
- The backend endpoints this screen calls (if any) already return correct data when tested directly

## When NOT to Use

- The backend endpoint this screen needs hasn't been verified yet — verify it with `/backend` first; wiring a frontend to an unverified endpoint means a failure could be in either layer
- No `/ui` spec exists for this screen — get the spec first, don't improvise layout while writing code (that's slower and less consistent than deciding first)

## Instructions

1. **Build exactly the screen the spec describes** — its primary action, its components, its four states (empty/loading/error/success). Don't add screens or components the spec didn't ask for.
2. **Match the stack `/build` decided.** If it's plain HTML/CSS/JS, don't reach for a framework "because it's cleaner" — that's scope creep on a time-boxed build.
3. **Wire real states, not just the happy path.** A loading spinner and an error message are not optional polish — they're in the spec because a live demo hits them (slow network, a bad input) more often than people expect.
4. **Keep styling to the design posture `/ui` stated** — one accent color, consistent spacing scale, system fonts unless told otherwise. Don't invent a new visual style per screen.
5. **Verify by opening it in a browser**, not by reading the code back. Click the primary action, trigger the error state on purpose (e.g. disconnect the mock/API), confirm it doesn't crash.

## Output Contract

Runnable frontend code for the screen (file path stated), plus a one-line note on how it was verified (opened in browser, primary action clicked, error state triggered).

## Quality Checklist

- [ ] Matches the `/ui` spec for this screen — no extra scope
- [ ] All four states (empty/loading/error/success) are implemented, not just success
- [ ] Uses the stack `/build` decided, no framework upgrade mid-build
- [ ] Opened in a real browser and the primary action confirmed working
- [ ] Error state was triggered on purpose and didn't crash the page
