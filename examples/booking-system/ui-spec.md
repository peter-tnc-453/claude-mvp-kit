# UI Spec — Meeting Room Booking MVP

**Design posture:** generous whitespace, one accent color (blue), system font stack, one primary action per screen.

## Screen 1 — Room List (home)
- **Primary action:** pick a room to book
- **Components:** a card per room (name, current status badge: Free / Booked until HH:MM), a "Book" button per card
- **States:**
  - Empty: "No rooms set up yet" + nothing else (MVP has no room-creation UI — rooms are seeded, see `/database`)
  - Loading: skeleton cards
  - Error: "Couldn't load rooms — try again" + retry button
  - Success: full room grid with live status per card

## Screen 2 — Book a Room
- **Primary action:** submit a booking for the selected room
- **Components:** room name (read-only, carried from Screen 1), name field, start time, end time, submit button
- **States:**
  - Empty: form is always populated with defaults (today's date, next available half-hour) — no true empty state here
  - Loading: submit button shows a spinner, disabled to prevent double-submit
  - Error: inline message under the form — either validation ("end time before start time") or conflict ("slot no longer available")
  - Success: confirmation message + return to Room List, now showing the updated status

## Screen 3 — My Bookings
- **Primary action:** look up bookings by name
- **Components:** name input, list of bookings (room, date, time range)
- **States:**
  - Empty: "No bookings found for that name"
  - Loading: skeleton list
  - Error: "Couldn't load bookings — try again"
  - Success: bookings listed in time order

## Navigation
```
Room List  →  Book a Room  →  (confirmation) →  Room List
Room List  →  My Bookings
```
