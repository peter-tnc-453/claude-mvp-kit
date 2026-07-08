# Lean Canvas — Meeting Room Booking MVP

> Confidence: Low (teaching example, not a real business case)

## 1. Problem
- P1: No single source of truth for room availability
- P2: Double-bookings discovered only when two groups show up
- P3: Checking availability requires asking a person, not a system

**Existing alternatives:** shared whiteboard, group chat pings, an unmaintained spreadsheet, or just showing up and hoping

## 2. Customer Segments
Small offices (10-40 people, 1-3 rooms), no dedicated facilities staff.
**Early adopters:** the one person in the office who already unofficially "owns" the whiteboard/spreadsheet today.

## 3. Unique Value Proposition
See every room's real-time availability and book a slot in under 15 seconds — no asking, no spreadsheet.

## 4. Solution
- Room list with live availability
- Book a slot (room + time range)
- See your own upcoming bookings

## 5. Channels
Direct install by the office admin/early adopter; word of mouth inside the office.

## 6. Revenue Streams
Out of scope for the MVP — this example stops at "does the tool work," not "is this a business." `[assumed]`

## 7. Cost Structure
Hosting (Vercel/Railway free tier is sufficient at this scale), no other real cost for an MVP.

## 8. Key Metrics
- % of bookings made without an external message/conversation
- Double-bookings per week (target: zero)

## 9. Unfair Advantage
None claimed — this is a teaching example. A real version's advantage would come from integration depth (calendar sync) or being the office's default tool already, not from this canvas.
