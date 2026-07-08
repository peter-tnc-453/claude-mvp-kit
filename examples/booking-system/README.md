# Example: Meeting Room Booking

This folder is the finished output of `/research → /prd → /roadmap → /ui` for one idea, so you can see the shape of a real pipeline run before doing your own. It stops at the UI spec — the actual code is meant to be generated live with `/build`, not shipped pre-written, so you see the code-generation step happen rather than just reading a finished repo.

## Files, in the order they were produced

1. `research-brief.md` — problem statement, JTBD, market sanity check
2. `lean-canvas.md` — one-page business model
3. `prd.md` — what's being built, in/out of scope, acceptance criteria
4. `user-stories.md` — the four stories the PRD points to
5. `roadmap.md` — Now/Next/Later + the MVP milestone OKR
6. `ui-spec.md` — screen-by-screen spec, ready for `/build`

## Try it yourself

```
Take the six files in this folder and continue with /build until you have a
working MVP running on localhost.
```

Or fork the whole repo and run the pipeline on your own idea from scratch — start at `/research`, not here.
