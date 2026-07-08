---
name: debug
description: Systematic root-cause debugging for when something built by /frontend, /backend, or /database doesn't work — reproduce, isolate the layer, fix the cause, verify. Use the moment something breaks, instead of guessing at fixes or pushing forward and hoping it resolves itself.
license: MIT
metadata:
  phase: build
  category: engineering
---
# Debug

## When to Use

- Any error, crash, or wrong output during `/build`'s sequence
- A demo run that doesn't match what `/ui` or the PRD described

## When NOT to Use

- Nothing is actually broken — this isn't a code-review or polish pass, it's for active failures only
- The same fix has already failed twice for the same hypothesis — see step 4; that's a stop condition, not a reason to keep trying variations of the same guess

## Instructions

1. **Read the actual error, completely**, before proposing a fix. The specific line, the specific message — not a skim. Most wrong fixes come from reacting to what the error *looks like* rather than what it *says*.
2. **Reproduce it on purpose.** Confirm you can make it happen again with a known input, not just that it happened once. A fix for a bug you can't reproduce is a guess wearing a diff.
3. **Isolate the layer before touching code.** Given the build order (database → backend → frontend), check the layer closest to the data first:
   - Query the database directly — is the data actually there and correct?
   - Call the backend endpoint directly (curl) — does it return the right thing, bypassing the frontend entirely?
   - Only then look at the frontend — if the backend is verified correct, the bug is in how the frontend calls or renders it.
4. **One root-cause hypothesis, one fix, one verify.** If that fix doesn't work, form a *different* hypothesis — don't retry the same fix with small variations. Two failed attempts at the same root cause means the approach is wrong, not the execution; that's the point to say so and try something structurally different, rather than a third attempt.
5. **Fix the cause, not the symptom.** If input validation is missing, add validation — don't wrap the crash in a try/catch that hides it. A hidden crash reappears somewhere else later.
6. **Verify with the original reproduction case**, not just "it looks fine now" — run the exact steps from step 2 again and confirm the error is actually gone.

## Output Contract

A one-line root-cause statement (not just a symptom description), the fix applied (file + what changed), and confirmation the original reproduction case now passes.

## Quality Checklist

- [ ] The actual error message was read in full, not skimmed
- [ ] The bug was reproduced on purpose before any fix was attempted
- [ ] The layer was isolated (database → backend → frontend) before editing code
- [ ] The fix addresses a stated root cause, not just the visible symptom
- [ ] The original reproduction case was re-run and confirmed fixed
