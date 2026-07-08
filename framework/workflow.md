# The Pipeline

```
Idea
  ↓
/research    →  problem statement + JTBD + market sanity check
  ↓
/persona · /competitor   (optional depth — run if the idea needs a sharper "who" or "against whom")
  ↓
/lean-canvas  →  one-page business model (optional but recommended before a PRD)
  ↓
/prd          →  what you're building, why, how success is measured
  ↓
/roadmap      →  Now / Next / Later + one outcome-based OKR
  ↓
/ui           →  screen list, layout, states — on paper, before code
  ↓
/build        →  decides the stack, dispatches:
     ├── /database   (schema first)
     ├── /backend     (endpoints, verified directly)
     └── /frontend    (UI code, wired to verified endpoints)
  ↓
/debug        →  the moment anything breaks — root cause, not a guess
  ↓
/deploy       →  Vercel (static) or Railway (has a backend) → live URL
```

## The one rule that matters more than any single skill

**Verify before moving to the next stage.** Every skill's Quality Checklist ends with a verification step for a reason — a PRD that hasn't been checked against the research brief, a database that hasn't been queried back, a frontend that hasn't been opened in a browser, are all the same mistake wearing a different layer's clothes. An MVP built in one sitting fails when an unverified assumption from stage 2 surfaces as a bug at stage 6, with five layers of context now sitting on top of it.

## Skipping stages

Every stage can be skipped for a small enough idea — see each skill's "When NOT to Use" section. The pipeline isn't a checklist to complete for its own sake; it exists so a skipped stage is a decision you made on purpose, not a gap nobody noticed.
