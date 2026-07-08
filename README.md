# Claude MVP Kit

**An AI Product Operating System สำหรับสร้าง MVP ด้วย Claude Code** — ไม่ใช่คอร์สสอนเขียนโค้ด แต่เป็น repository ที่ประกอบ Product Management framework, prompt library, และ code-generation workflow ไว้ในที่เดียว fork แล้วสั่งงานได้ทันที

## สิ่งที่อยู่ในนี้

- **Claude Skills 14 ตัว** ครอบคลุมทั้งไปป์ไลน์ ตั้งแต่ research จนถึง deploy
- **Product Management framework** — Todd Birzer's 4-pillar map ที่กำหนดว่าทำไมไปป์ไลน์ถึงเรียงลำดับแบบนี้
- **Prompt library** — prompt สำเร็จรูปสำหรับแต่ละขั้นตอน คัดลอกไปใช้ได้เลย
- **UI/PRD/Research generator** — ผ่านสกิลที่ปรับมาจาก [product-on-purpose/pm-skills](https://github.com/product-on-purpose/pm-skills) (Apache 2.0)
- **ตัวอย่างโปรเจกต์ 3 ชิ้น** — 1 ชิ้นทำครบ (Booking System) + 2 ชิ้นเป็น starting prompt (CRM, AI Chat Dashboard)
- **Deploy script** — ไปที่ Vercel (static) หรือ Railway (มี backend) คำสั่งเดียว

กลับบ้านแล้วสามารถสร้าง MVP เองได้ทันที

## Repository Tour

```
claude-mvp-kit/
├── .claude/
│   └── skills/          14 skill: research, persona, competitor, lean-canvas,
│                         prd, roadmap, user-story, ui, build, frontend,
│                         backend, database, debug, deploy
├── framework/            ทำไมไปป์ไลน์เรียงแบบนี้ (PM framework + prompt frameworks)
├── prompts/               prompt สำเร็จรูปต่อขั้นตอน — copy ไปใช้ได้เลย
├── template/              ทางลัดไปยัง template ของแต่ละ artifact
├── examples/              3 ตัวอย่างโปรเจกต์ (1 ทำครบ + 2 stub)
└── CLAUDE.md              บอก Claude Code ว่าต้องทำงานตาม workflow นี้เสมอ
```

## The Pipeline

```
Idea → /research → /prd → /roadmap → /ui → /build (→ /frontend /backend /database) → /debug → /deploy
```

รายละเอียดเต็มของแต่ละขั้น + เหตุผลว่าทำไมต้องเรียงแบบนี้ → `framework/workflow.md`

## Quickstart

```bash
git clone <this-repo-url> my-mvp
cd my-mvp
claude
```

จากนั้นพิมพ์ในเซสชัน Claude Code:

```
สร้าง MVP: [ไอเดียของคุณในหนึ่งประโยค]
ใช้ repository นี้ ทำตาม workflow เต็ม (research → prd → roadmap → ui → build → debug → deploy)
```

ดู prompt สำเร็จรูปเพิ่มเติมที่ `prompts/prompt-library.md` หรือดูตัวอย่างที่ทำเสร็จแล้วที่ `examples/booking-system/`

## Update / Fork / Pull

- **Fork แล้วใช้ต่อ:** กด Fork บน GitHub แล้ว clone repo ของตัวเอง — แก้/เพิ่ม skill ได้อิสระ ไม่กระทบต้นฉบับ
- **ดึงอัปเดตจากต้นฉบับ:** `git remote add upstream <original-repo-url>` แล้ว `git fetch upstream && git merge upstream/main`
- **ส่งของกลับ:** เปิด Pull Request บนต้นฉบับ ถ้ามี skill/ตัวอย่างที่คิดว่าคนอื่นควรได้ใช้ด้วย

## License & Attribution

- Kit นี้: MIT (ยกเว้นไฟล์ที่ระบุ `license: Apache-2.0` ในตัวเอง)
- Skill `persona`, `competitor`, `lean-canvas`, `prd`, `user-story` และ reference ที่ `research`/`roadmap` ใช้: ดัดแปลงจาก [product-on-purpose/pm-skills](https://github.com/product-on-purpose/pm-skills), Apache License 2.0 — ดู `NOTICE` และ `LICENSE-pm-skills`
- Prompt framework cheat sheet: ดัดแปลงจาก [ckelsoe/prompt-architect](https://github.com/ckelsoe/prompt-architect), MIT
- PM framework diagram: Todd Birzer, "The Work of Product Management"
