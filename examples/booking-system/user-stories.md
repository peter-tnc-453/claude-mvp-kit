# User Stories — Meeting Room Booking MVP

## US-1 — See room availability
**As an** employee, **I want** to see which rooms are free right now, **so that** I don't have to ask around.
- **Priority:** P0

**Acceptance Criteria**
- Given at least one room exists, when I open the app, then I see every room and whether it's free or booked right now
- Given a room has zero bookings today, when I view it, then it shows as free with no error

## US-2 — Book a room
**As an** employee, **I want** to book a room for a specific time slot, **so that** it's reserved for me.
- **Priority:** P0

**Acceptance Criteria**
- Given a room and a valid time range, when I submit a booking, then it's saved and appears in that room's schedule
- Given start time is after end time, when I submit, then I see a validation error and nothing is saved

## US-3 — Prevent double-booking
**As an** employee, **I want** a clear error if my chosen slot just got taken, **so that** I'm not surprised later.
- **Priority:** P0

**Acceptance Criteria**
- Given a room already has a booking for 2-3pm, when I try to book 2:30-3:30pm for the same room, then I see a "slot no longer available" error and nothing is saved
- Given the same scenario, when I check the room's schedule after the rejected attempt, then only the original booking exists

## US-4 — View my bookings
**As an** employee, **I want** to see my own upcoming bookings, **so that** I remember where I'm meeting.
- **Priority:** P1

**Acceptance Criteria**
- Given I've made at least one booking today, when I look up my name, then I see every booking I've made, in time order
- Given I've made zero bookings, when I look myself up, then I see an empty state, not an error
