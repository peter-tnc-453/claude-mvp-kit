---
artifact: prd
version: "1.0"
status: draft
---

# PRD: Meeting Room Booking MVP

## Overview

### Problem Statement
Small offices have no single source of truth for meeting room availability — see `research-brief.md`.

### Solution Summary
A single-page app: see all rooms and their availability today, book an open slot, see your own upcoming bookings.

### Target Users
Anyone in the office who needs a room — no admin role, no approval step.

## Goals & Success Metrics

### Goals
1. Eliminate double-bookings
2. Reduce time-to-book to under 15 seconds

### Success Metrics

| Metric | Baseline | Target | Timeline |
|---|---|---|---|
| Double-bookings/week | Unmeasured (whiteboard) | 0 | First week of use |
| Time to book a slot | ~2 min (ask + wait) | <15 sec | Immediate (MVP) |

### Non-Goals
- Recurring bookings
- Calendar integration (Google/Outlook sync)
- User accounts / login (MVP assumes a trusted, shared office context)

## User Stories

See `user-stories.md` for the full list. Summary:

| ID | User Story | Priority |
|---|---|---|
| US-1 | As an employee, I want to see which rooms are free right now, so I don't have to ask around | P0 |
| US-2 | As an employee, I want to book a room for a specific time slot, so it's reserved for me | P0 |
| US-3 | As an employee, I want to see a clear error if my chosen slot just got taken, so I'm not surprised later | P0 |
| US-4 | As an employee, I want to see my own upcoming bookings, so I remember where I'm meeting | P1 |

## Scope

### In Scope
- Room list with today's availability
- Book a room for a time slot
- View own bookings

### Out of Scope
- Recurring bookings, calendar sync, login/auth, multi-day booking view

### Future Considerations
- Calendar sync — deferred because it needs OAuth setup that doesn't fit a 1-hour build
- Multi-office support — deferred, no evidence yet that one office isn't enough

## Solution Design

### Functional Requirements

#### Room availability
- FR-1: List all rooms with today's booked time ranges
- FR-2: Mark a room "free now" if no booking covers the current time

#### Booking
- FR-3: Accept room + start time + end time, reject if it overlaps an existing booking
- FR-4: Show the requester's name/identifier with each booking (no auth — free-text name is enough for an MVP)

### Edge Cases

| Scenario | Expected Behavior |
|---|---|
| Two people try to book the same overlapping slot | Second request is rejected with a clear "slot no longer available" error, not a silent overwrite |
| Booking end time before start time | Rejected with a validation error, not saved |
| No rooms exist yet (empty database) | Empty state shown, not a crash |

## Technical Considerations

### Constraints
- Must run locally with zero paid infrastructure (SQLite, no external services)
- Must be deployable to Vercel or Railway within the same session

### Data Requirements
No PII beyond a free-text name per booking — nothing sensitive enough to need special handling for an MVP demo.

## Open Questions
- [ ] Does "free now" need a live-updating clock, or is a page refresh acceptable for the MVP? — default: page refresh is acceptable, note it as a known limitation

## Appendix

### Related Documents
- `research-brief.md`
- `lean-canvas.md`
- `user-stories.md`
- `ui-spec.md`
