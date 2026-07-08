# Live Demo Script — Meeting Room Booking MVP

For the trainer to read aloud or paste into chat during the IKI-SEA session (July 11, 14:15–16:15). Each stage has: **what to say to the audience** (plain English, no jargon), **what to type** (copy-paste ready), and **what you'll get back** (already validated — this exact sequence has been run before, so the outputs below are real, not guesses).

The finished version of every output below already exists in [`examples/booking-system/`](../../examples/booking-system/) in this repo, in case a live run doesn't go exactly the same way and you need to show the "already done" version instead.

---

## Stage 1 — Research
**Say to the audience:** "Every idea starts as a guess. This first step turns a guess into something we can actually check — who has this problem, and is it worth solving?"

**Type:**
```
I have an idea: a meeting-room booking system for small offices that don't have
a dedicated admin. Use the research skill — write a problem statement, a JTBD
(jobs-to-be-done) canvas, and a quick market sanity check, then stop and let me
confirm before we go further.
```

**What you'll get back (plain English):** A short document naming who has the problem (small offices, 10-40 people, no admin staff), what they do today instead (a whiteboard, a group chat, a spreadsheet nobody updates), and why it's worth fixing (double-bookings, wasted time). Anything guessed gets labeled "assumed," not stated as fact — that labeling is a deliberate feature, not a gap.

---

## Stage 2 — PRD (Product Requirements Document)
**Say to the audience:** "A PRD is one page that says exactly what we're building, and — just as important — what we're *not* building yet. This is what stops a small idea from quietly turning into a huge one."

**Type:**
```
Take that research and write a PRD — keep it small enough to actually finish
today. Don't include anything the research didn't point to.
```

**What you'll get back:** A one-page spec: see room availability, book a room, get a clear error if two people try to book the same slot, see your own bookings. Explicitly *not* included: logins, calendar sync, recurring bookings — with a one-line reason for each exclusion.

---

## Stage 3 — Roadmap
**Say to the audience:** "If we can't build everything today, what goes first? This step turns that judgment call into a visible, defendable decision instead of a guess."

**Type:**
```
Turn this PRD into a roadmap — sort the features into Now, Next, and Later, and
write one goal for what "done" looks like today.
```

**What you'll get back:** A simple table sorting every feature into **Now** (ships today), **Next**, or **Later**, plus one sentence stating what success looks like ("zero double-bookings in the first week of use").

---

## Stage 4 — UI (screen design, on paper first)
**Say to the audience:** "Before any code gets written, we decide what the screens look like — on paper. This is the step people usually skip, and skipping it is why AI-built demos often run long: the model ends up designing *while* coding, which is slower."

**Type:**
```
Based on the roadmap's "Now" list, describe every screen we need — its one main
purpose, and what it looks like when it's empty, loading, showing an error, and
working normally. No code yet.
```

**What you'll get back:** Three screens described in plain language — a Room List, a Booking form, and a "My Bookings" lookup — each with its main action and all four states named. Still zero code at this point.

---

## Stage 5 — Build (and its three parts: Frontend, Backend, Database)
**Say to the audience:** "Now — and only now — code gets written. 'Build' means Claude first decides the simplest possible setup, then writes the three layers in order: the database (where bookings are stored), the backend (the rules — like 'you can't double-book'), and the frontend (what you actually see and click)."

**Type:**
```
Build this. Use the simplest stack that works — no unnecessary tools. Build the
database first, then the backend, verify each one actually works, then build the
screens last.
```

**What you'll get back:** A small, working local app — running rooms table, a rule that rejects double-bookings, and the three screens from Stage 4, wired together. Each layer gets checked before the next one is built on top of it — that check is what keeps a live build from breaking in front of an audience.

---

## Stage 6 — Debug (only if something breaks)
**Say to the audience:** "Something *will* occasionally break, live, in front of people — that's normal software, not a failure. The habit that matters is: read the actual error, don't guess."

**Type (only if needed):**
```
[paste the exact error message]

Something broke. Find the actual cause first, then fix it, then show me it's
actually fixed — don't just tell me it's fixed.
```

**What you'll get back:** A one-line explanation of what actually went wrong (not just "fixed it"), the specific change made, and confirmation the original problem is gone.

---

## Stage 7 — Deploy
**Say to the audience:** "Last step: give the app a real web address anyone can open — not just something running on this one laptop."

**Type:**
```
This is working locally. Deploy it so I have a real link I can open in a
browser and share.
```

**What you'll get back:** A live URL. Open it. Click the main button. That's the proof it actually shipped — not just that the deploy command finished without an error.

---

## If live time runs short

Skip straight to `examples/booking-system/` in the repo and walk through the six already-finished files instead of running the sequence live — same story, zero risk of a stall eating into Q&A time.
