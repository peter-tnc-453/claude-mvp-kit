# Prompt Library — Copy, Paste, Adjust

One ready-to-use prompt per pipeline stage. Swap the bracketed parts for your idea; everything else is designed to work as-is against this kit's skills.

## 1. Research

```
Build an MVP: [your idea in one sentence, e.g. "a meeting-room booking system for small offices"]

Use this repository. Run /research first — write a full problem statement, JTBD canvas,
and market sanity check, then stop and wait for me to confirm before moving on.
```

## 2. PRD (after confirming the research brief)

```
Take the research brief above and run /prd — scope it to what can realistically ship
in [time available]. Don't include any feature the research brief doesn't point to.
```

## 3. Roadmap

```
Run /roadmap on this PRD — prioritize with RICE into Now/Next/Later, and write the
MVP milestone OKR. "Now" has to be achievable within [time available].
```

## 4. UI

```
Run /ui on the "Now" scope from the roadmap — list every screen, its primary action,
and its four states (empty/loading/error/success) for each. No code yet.
```

## 5. Build (research → deploy in one pass, for a live demo)

```
Build [your idea] using this repository. Follow the full workflow (research → prd →
roadmap → ui → build → debug → deploy) until it's a real MVP running on localhost.
Tell me what you verified at each step before moving to the next.
```

## 6. Debug (when something breaks)

```
[paste the full error message here]

Use /debug — reproduce it first, isolate whether the bug is in the database,
backend, or frontend layer, then propose a fix and how you'll verify it.
```

## 7. Deploy

```
This build is verified working locally. Use /deploy to ship it to [vercel|railway],
then open the live URL and confirm the primary action actually works.
```

## Composing your own

If none of the above fits, use `framework/prompt-frameworks.md` to pick a shape (RACE for a fresh build request, CTF for a narrow bug fix) — the goal is always: state the goal in one sentence, the constraint in the next, and which skill should own the work.
