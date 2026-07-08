# The Product Framework This Kit Runs On

Every skill in `.claude/skills/` exists to do one of four jobs. This map (adapted from Todd Birzer's "The Work of Product Management") is the reason the pipeline is shaped the way it is — it's not an arbitrary list of steps, it's a translation of a real management framework into things an AI agent can actually execute.

```
Market Intelligence  →  Strategy  →  New Product Development  →  Lifecycle Management
   (market/customer/       (strategy          (prioritization,          (positioning, pricing,
    competition)            development)       discovery & delivery,     sales support, growth,
                                                launch)                   obsolescence)
```

Each column reports to a different audience in a real org (market intelligence feeds the marketing team and executives; new product development reports to engineering; lifecycle management serves sales and customer success) — this kit compresses all four into a single AI-assisted session, because an MVP built solo or in a classroom doesn't have four separate teams. One person (or one AI pipeline) has to do all four jobs in sequence.

## Where each skill lives on the map

| Birzer column | What it does | Kit skill(s) |
|---|---|---|
| **Market Intelligence** | Understand the market, the customer, the competition | `/research`, `/persona`, `/competitor` |
| **Strategy** | Decide what to build and why, in one page | `/lean-canvas` |
| **New Product Development** | Prioritize, discover, deliver, launch | `/prd`, `/roadmap`, `/ui`, `/build`, `/frontend`, `/backend`, `/database`, `/debug` |
| **Lifecycle Management** | Ship it somewhere real, positioned for the audience it's for | `/deploy` |

## Why this order matters

Skipping a column doesn't remove the work — it just moves the decision from "made on purpose, on paper" to "made by accident, in code." A PRD written without a research pass specifies a solution to a guessed problem. A build started without a roadmap builds features in whatever order they come to mind, not the order that proves the riskiest assumption first. This kit's pipeline exists to force those decisions to happen at the cheap stage (a paragraph) instead of the expensive one (a rewritten component).

## Source

Framework diagram: Todd Birzer, "The Work of Product Management" (used with attribution; the four-column structure is a widely-taught product management model, not proprietary to this kit).
