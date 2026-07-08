# Prompt Frameworks Cheat Sheet

Every skill in this kit already writes good instructions for Claude Code internally — you don't need to know a prompt framework to use `/research` or `/prd`. This sheet is for the moments *between* skills: when you're talking to Claude Code directly about your own MVP idea, a framework keeps your prompt from being vague enough to get a vague answer back.

Adapted from **prompt-architect** (MIT license, github.com/ckelsoe/prompt-architect), narrowed to the handful of frameworks that come up constantly while building an MVP.

| Situation | Framework | Shape |
|---|---|---|
| Quick one-off ask, no context needed | **APE** | Action, Purpose, Expectation |
| You know the expertise + task | **RTF** | Role, Task, Format |
| Task needs situational context | **CTF** | Context, Task, Format |
| Deliverable needs a role, background, *and* a clear outcome | **RACE** | Role, Action, Context, Expectation |
| Audience/tone/style genuinely matter (e.g. a customer-facing copy pass) | **CO-STAR** | Context, Objective, Style, Tone, Audience, Response format |
| Multi-step procedure (e.g. "walk through building X") | **RISEN** | Role, Instructions, Steps, End goal, Narrowing |
| Improving something that already exists (rewrite, refactor) | **BAB** | Before, After, Bridge |

## How to use this while building

- Starting a new MVP idea from a blank page → **RACE** ("You're a product engineer. Build a booking MVP. Context: [PRD]. I expect a working local build by end of session.")
- Asking Claude Code to fix a specific bug → **CTF** is usually enough; the context *is* the error message and the reproduction steps
- Asking for a rewrite of copy/UI text for a specific audience → **CO-STAR**
- None of these fit → just state the goal in one sentence and the constraint in the next. A framework is a shortcut to clarity, not a requirement for it.

## Full list

The complete 27-framework set (covering create/transform/reason/critique/recover/clarify/agentic intents) lives in the upstream `prompt-architect` skill if you install it separately — this cheat sheet only keeps the subset that comes up during MVP building.
