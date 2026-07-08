# Content Spec — MVP OS for IKI-SEA (Bangkok University)

## 0. Audience
- **Who:** Faculty, researchers, and students at The Institute for Knowledge and Innovation Southeast Asia (IKI-SEA), Bangkok University. International, English-speaking, **non-technical** — no coding background assumed.
- **Vocabulary they don't have yet (must define on first use, plain English, no jargon left undefined):** "skill" (a saved instruction pack Claude reads and follows), "repo"/"repository" (a shared project folder stored online), "zip file" (a single compressed file you can download and upload), "prompt" (what you type to Claude), "deploy" (put the finished app on a real web address anyone can open), "stack" (which tools/technologies the app is built from).
- **What they care about:** can I actually do this myself, with zero coding experience, in one sitting? Will it work on my own laptop? What do I get to keep after the session?
- **Context:** online, Zoom-style, July 11, 14:15–16:15 (120 min), screen-shared slides + live demo. Assume some attendees are on a phone/tablet at times — text must read at screen-share scale, not just on Peter's own monitor.

## 1. Research + Evidence
This is a how-to/skills-transfer session, not a business case — the "evidence" here is the actual, working repository and real screenshots, not market statistics. No invented numbers appear anywhere in this deck.
- **Real assets used as evidence:**
  - github.com/peter-tnc-453/mvp-os (Claude Code kit, MIT + Apache-2.0-attributed)
  - github.com/peter-tnc-453/mvp-os-skills (claude.ai web package, single `mvp-os.zip`)
  - examples/booking-system/ inside mvp-os — a fully worked, already-validated example (research brief → lean canvas → PRD → user stories → roadmap → UI spec)
  - 9 real screenshots from Peter's own machine (path: `Peter-Vault-Assets/raw/mvp-training-bu/`) documenting the actual install flow, including a real mistake (nested-zip error) and a real success (skill invoked correctly on a "wildfire viewing app" idea)
- **No myths, no unverifiable stats.** Nothing about attention spans, retention curves, or learning styles appears anywhere.

## 2. Sparkline pass
- **What is → what could be, repeated every 2-3 slides:** open on "today, building software means hiring developers or learning to code — weeks or months" → close on "today, in this room, you'll leave with a working MVP pipeline you can run yourself, no code required."
- **Signaling — one memorable idea per slide**, made visually dominant, not competing with equally-sized boxes.
- **Serial position:** the core message ("You don't need to code — you need to know what to ask for, in order") is stated in the first 3 minutes and in the closing slide.
- **Story:** the running example (a shared meeting-room booking problem) is a relatable, universal small-office problem — stands in for "one real person's story" since this is a tool-teaching session, not a narrative pitch.

## 3. Slide-by-slide outline

| # | Section | Title (action, so-what) | Content | Signal (if remembered, remember this) |
|---|---|---|---|---|
| 1 | Cover | MVP OS: Build a Working App Without Writing Code | Title, subtitle, Peter's name/role, IKI-SEA logo/date | This is a tool session, not a coding class |
| 2 | Hook | "What if the only skill you needed was knowing what to ask?" | Info-gap question, no answer yet | — |
| 3 | Reframe | This Is an Operating System, Not a Programming Course | "AI Product Operating System" positioning — you drive, Claude builds | Core message #1 |
| 4 | Agenda | Two Hours, Four Things | 1) the pipeline 2) live demo 3) install it yourself 4) your turn | Sets expectation: hands-on |
| 5 | The Problem | Building Software Used to Mean Months and a Dev Team | What-is anchor (sparkline open) | — |
| 6 | The Shift | Now It Means One Conversation, In Order | What-could-be preview | — |
| 7 | The Pipeline (full) | Eight Stages, One Path: Idea → Deploy | Full diagram: Idea → Research → PRD → Roadmap → UI → Build (Frontend/Backend/Database) → Debug → Deploy | Memorize this one diagram |
| 8 | Stage 1-2 plain English | Research = "Is This Worth Building?" / PRD = "What Exactly Are We Building?" | Define both in one plain sentence each | — |
| 9 | Stage 3-4 plain English | Roadmap = "What Do We Build First?" / UI = "What Does It Look Like?" | Define both plainly | — |
| 10 | Stage 5-7 plain English | Build/Debug = "Claude Writes and Fixes the Code" | You don't write code — you review and approve | Reduces intimidation |
| 11 | Stage 8 plain English | Deploy = "Give It a Real Web Address" | The finish line | — |
| 12 | Meet the Example | Today's Example: A Meeting Room Booking App | Why this example: small, universal, already fully built and tested | Sets up the live demo |
| 13 | Live Demo intro | Watch: Idea → Research, Live | Cue: 🎤 switch to screen-share, no slide content needed underneath | — |
| 14 | Live Demo recap | What Just Happened | 3 bullets recapping research → prd → roadmap → ui outputs, plain English, screenshots of real output text | — |
| 15 | Live Demo intro 2 | Watch: Build → Deploy, Live (or Pre-Recorded Fallback) | Explicit fallback note for Peter's own risk-mitigation (per earlier decision) | — |
| 16 | Install — Web overview | Two Ways to Use This: Web or Claude Code | Set up the two-path structure before diving into either | — |
| 17 | Install — Web step 1 | claude.ai: One Download, One Upload | Real screenshot: Skills settings page | — |
| 18 | Install — Web step 2 (the mistake) | The One Button NOT to Click | Real screenshot: GitHub "Code → Download ZIP" — explain why this fails (nests the zip) | Highest-attention slide — this is the exact mistake Peter hit live |
| 19 | Install — Web step 3 (correct) | The Right Link: Direct Download | Real screenshot/URL: the GitHub Release download link | — |
| 20 | Install — Web step 4 (proof) | It Works: Real Conversation, Real Output | Real screenshot: the "wildfire viewing app" research brief success | Payoff — proof it works |
| 21 | Install — Claude Code | For Anyone Ready to Go Further: Claude Code | git clone + `claude` + type your idea — 3 steps only | — |
| 22 | Your Turn | What's Your Idea? | Prompt for audience: think of one small problem you'd want an app for | Sets up post-session action |
| 23 | Closing | Two Links, One Habit | Repo URLs (mvp-os, mvp-os-skills) + "the habit: ask for one stage at a time, in order" | Repeats core message #1 |
| 24 | Thank you / Q&A | Questions | Contact info if appropriate | — |

Opening line (word-for-word): *"Two years ago, if you wanted a working app, you needed a developer, a few months, and a budget. Today, you need one conversation — if you know what to ask for, in what order. That's what the next two hours are about."*

Closing line (word-for-word): *"You don't need to become a programmer. You need one habit: ask for one stage at a time, in order. Idea. Research. PRD. Roadmap. UI. Build. Debug. Deploy. That's the whole operating system — and it's yours to download today."*

## 4. Measurement plan (workshop)
- **L2 (in-session, hands-on):** every attendee names one MVP idea out loud/in chat by slide 22; those who install the skill live during the session (either path) count as a completed hands-on action.
- **L3 (follow-up, 2-4 weeks):** Peter/IKI-SEA sends a short follow-up asking who tried building their own MVP idea after the session — this is a plan for Peter to execute, not part of the deck itself.
- Retrieval built in: slide 8-11 (plain-English pipeline recap) doubles as a retrieval check right after the diagram is first shown.

## 5. Rehearsal note
- The live-demo slides (13, 15) intentionally carry no dense content — Peter drives Claude Code/claude.ai live on screen-share. Rehearse the actual demo run at least once before July 11 so the fallback screenshots (already captured) are a true safety net, not a first attempt.
- Say the opening and closing lines from memory, not read off the slide.

---

## Build rules for Jony
- Fully English, non-technical audience — no jargon left undefined anywhere in the deck.
- Large, screen-share-readable type (this is an online session, some attendees may be on smaller screens).
- Use the 9 real screenshots at `/Users/thanachotwongkerd/Library/Mobile Documents/com~apple~CloudDocs/Peter-Vault-Assets/raw/mvp-training-bu/` directly — crop/frame them large, don't shrink into small corners.
- Dark developer-tool aesthetic consistent with the existing MVP OS banner (already built, at `~/Projects/mvp-os/assets/banner.png`) — reuse the same visual system (near-black background, single amber accent, SF Pro/SF Mono) so the deck and the product it's teaching visually match.
- No emoji-as-icon. Gradient text needs a solid-color fallback (per Phase 3 build rule).
- Export PNG per slide, assemble PDF from the verified PNGs directly (no HTML→PDF print).
- qc_slides must PASS before delivery.
