# Roadmap — Meeting Room Booking MVP

## Prioritization (RICE, illustrative scores for a teaching example)

| Feature | Reach | Impact | Confidence | Effort | Score | Bucket |
|---|---|---|---|---|---|---|
| Room list + live availability | High | High | High | Low | Highest | Now |
| Book a room | High | High | High | Low | High | Now |
| Prevent double-booking | High | High | High | Low | High | Now |
| View own bookings | Medium | Medium | High | Low | Medium | Now |
| Calendar sync (Google/Outlook) | Medium | High | Low | High | Low | Later |
| Recurring bookings | Low | Medium | Medium | Medium | Low | Later |

## Now / Next / Later
- **Now:** room list, booking, double-booking prevention, view own bookings — the four user stories in `user-stories.md`
- **Next:** none deliberately deferred beyond "Later" for this teaching example
- **Later:** calendar sync, recurring bookings — both need infrastructure (OAuth, recurrence rules) that don't fit a single build session

## MVP Milestone OKR

**Objective:** Prove an office can replace its whiteboard/spreadsheet with this tool for one week without a double-booking.

- **KR1:** Zero double-bookings recorded in the first week of use
- **KR2:** 100% of test bookings complete in under 15 seconds, measured by a live walkthrough
