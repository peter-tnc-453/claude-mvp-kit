---
name: backend
description: Writes the API/server layer matching the PRD's features — one endpoint per action, backed by the /database schema. Use when /build dispatches backend work, before any frontend code calls these endpoints.
license: MIT
metadata:
  phase: build
  category: engineering
---
# Backend

## When to Use

- `/build` has decided the stack includes a server layer
- The `/database` schema this backend reads/writes already exists

## When NOT to Use

- The MVP has no server-side logic or persistence — a static frontend covers it, skip this skill
- The database schema hasn't been created yet — build that first; an endpoint against a table that doesn't exist can't be verified

## Instructions

1. **One endpoint per user action in the PRD** — not a generic CRUD scaffold for every table. If the PRD only needs "create a booking" and "list bookings," write those two, not a full REST surface nobody asked for.
2. **Validate at the boundary.** Input coming from the frontend is the one place validation is real — check required fields and types before touching the database; don't add speculative validation for inputs the PRD never mentions.
3. **Return errors as data, not crashes.** A malformed request should return a clear error response, not a stack trace — the frontend's error state depends on this.
4. **Verify each endpoint directly before any frontend touches it** — a raw `curl`/HTTP client request, checking the actual response body against what the PRD/UI spec expects. This is the single check that prevents "is the bug in the frontend or backend" debugging later.
5. **Keep it to one file until it hurts.** For an MVP, one server file with a handful of routes is easier to reason about live than a folder structure designed for a team of ten — split into modules only when the file genuinely becomes hard to navigate.

## Output Contract

Runnable server code (file path stated), a list of endpoints (method + path + one-line purpose), and for each one, the verification command used and the response actually observed.

## Quality Checklist

- [ ] One endpoint per real user action, no speculative CRUD surface
- [ ] Required-field validation exists at the boundary, nothing more than the PRD needs
- [ ] Errors return as structured responses, not unhandled crashes
- [ ] Every endpoint was verified directly (curl/HTTP client) before frontend wiring started
- [ ] Still a single file/module unless splitting was actually necessary
