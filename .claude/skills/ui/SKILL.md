---
name: ui
description: Turns a PRD + roadmap's "Now" scope into a concrete UI spec (screen list, layout per screen, component list, states) before any code is written. Use after /roadmap and before /build, so frontend work has a spec to build against instead of improvising layout while writing code.
license: MIT
metadata:
  phase: design
  category: design
---
# UI

UI sits between Roadmap and Build: **Idea → Research → PRD → Roadmap → UI → Code → Deploy**. Its only job is to decide what the screens look like and how they connect, on paper, before a single line of frontend code exists. Skipping this step is the single most common reason an AI-built MVP demo runs long — the model ends up designing the layout *while* writing the component, which is slower and less consistent than deciding first.

## When to Use

- Right after `/roadmap` fixes the "Now" scope for this MVP
- Before `/build` or `/frontend` write any component code
- When a screen's purpose is unclear and the build is stalling on "what goes here"

## When NOT to Use

- The MVP is a single-screen tool with an obvious layout (e.g. a CLI, a webhook) — skip straight to `/build`
- You're redesigning an existing shipped product with real usage data — that needs user research, not this lightweight pass

## Instructions

1. **List every screen the "Now" scope requires.** One line each: screen name + its one job ("Booking screen — pick a room and time slot"). A screen that does two unrelated jobs should usually split into two.
2. **For each screen, name:**
   - the primary action (the one thing the user came to do)
   - the components on it (form, list, card, table, modal — plain names, not code)
   - its states: empty (no data yet), loading, error, and success/populated. A screen spec without an empty and error state is incomplete — most demo failures happen in those states because nobody designed for them.
3. **Draw the navigation.** A simple arrow list is enough: `Home → Booking → Confirmation`. Note anything that can loop back or dead-end.
4. **Pick a design posture, don't invent one per screen.** Default to: generous whitespace, one primary action per screen, system font stack, a single accent color. State the choice once at the top of the spec so every screen stays consistent — a build with 5 different button styles reads as unfinished even if every screen individually looks fine.
5. **Flag accessibility basics** that affect build decisions now (not as an afterthought): color contrast for text, a keyboard-reachable primary action, alt text on any image that carries meaning.
6. **Hand off.** The output is a spec, not a mockup image — `/frontend` builds directly from it. If a real visual mockup is wanted, render the spec as a simple static HTML page for the class to react to before wiring behavior.

## Output Contract

A markdown spec: one `##` heading per screen (primary action, components, four states), a navigation map, and one "Design Posture" section stated once at the top.

## Quality Checklist

- [ ] Every screen has a single primary action
- [ ] Every screen lists empty / loading / error / success states
- [ ] Navigation between screens is drawn, not implied
- [ ] Design posture (spacing, font, accent color) is stated once, not per-screen
- [ ] Nothing in the spec requires a component that isn't in `/build`'s stack decision
