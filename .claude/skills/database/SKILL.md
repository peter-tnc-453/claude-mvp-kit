---
name: database
description: Designs the minimal schema matching the PRD's entities and writes the migration/seed script. Use first among the three build layers, before /backend or /frontend write any code that depends on it.
license: MIT
metadata:
  phase: build
  category: engineering
---
# Database

## When to Use

- `/build` has mapped which screens/endpoints need persisted data
- Starting a build from scratch, or adding one new entity mid-build

## When NOT to Use

- The MVP has no data to persist between sessions (pure calculation, no user accounts, nothing saved) — skip this skill entirely
- The entity already exists in the schema and nothing about it is changing — don't regenerate it

## Instructions

1. **List the entities the PRD actually needs**, not every table a "real" version of this product would eventually have. An MVP booking system needs `bookings` and maybe `rooms` — it does not need `audit_logs`, `user_roles`, or a `notifications` table unless the PRD asked for one.
2. **Default to SQLite for a live/classroom build.** It's a single file, needs no server process, and is the fastest thing to get running and verify — reach for Postgres/MySQL only if the user has a stated reason to (existing infra, a specific deploy target that needs it).
3. **Define each table with only the columns the PRD's features actually read or write.** A speculative "we might need this later" column is exactly the kind of scope creep that eats build time without adding demo-visible value.
4. **Write the schema as a runnable migration/init script**, not just a description — `CREATE TABLE` statements the build can execute directly.
5. **Seed a small amount of realistic sample data.** A demo against an empty database can't show the "populated" UI state from `/ui`'s spec — seed enough rows to make every screen state visible.
6. **Verify by running the script and querying it back** — create the tables, insert the seed data, select it back, confirm the shape matches what `/backend` expects to read.

## Output Contract

A runnable schema/migration file (file path stated), a seed script, and a one-line confirmation that both were executed and queried back successfully.

## Quality Checklist

- [ ] Only entities/columns the PRD's features actually use — no speculative tables
- [ ] SQLite by default unless there's a stated reason for something heavier
- [ ] Schema is a runnable script, not a description
- [ ] Seed data exists and is enough to populate every UI state
- [ ] Ran the migration and queried the seed data back to confirm it works
