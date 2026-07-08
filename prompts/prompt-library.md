# Prompt Library — Copy, Paste, Adjust

One ready-to-use prompt per pipeline stage. Swap the bracketed parts for your idea; everything else is designed to work as-is against this kit's skills.

## 1. Research

```
สร้าง MVP: [หนึ่งประโยคบอกไอเดีย เช่น "ระบบจองห้องประชุมสำหรับออฟฟิศขนาดเล็ก"]

ใช้ repository นี้ ทำตาม /research ก่อน — เขียน problem statement, JTBD canvas,
และ market sanity check ให้ครบ แล้วหยุดรอผมยืนยันก่อนไปขั้นต่อไป
```

## 2. PRD (after confirming the research brief)

```
เอา research brief ด้านบนไปทำ /prd — โฟกัส feature ที่ทำให้จบใน [เวลาที่มี] เท่านั้น
ห้ามใส่ feature ที่ research brief ไม่ได้ชี้ว่าจำเป็น
```

## 3. Roadmap

```
ทำ /roadmap จาก PRD นี้ — จัด Now/Next/Later ด้วย RICE และเขียน OKR ของ MVP milestone
Now ต้องทำเสร็จได้จริงใน [เวลาที่มี]
```

## 4. UI

```
ทำ /ui จาก roadmap ส่วน Now — list หน้าจอทั้งหมด, primary action ต่อหน้า,
และ 4 states (empty/loading/error/success) ของแต่ละหน้า ยังไม่ต้องเขียนโค้ด
```

## 5. Build (research → deploy in one go, for a live demo)

```
สร้าง [ไอเดีย] ใช้ repository นี้ ทำตาม workflow ทั้งหมด (research → prd → roadmap →
ui → build → debug → deploy) จนได้ MVP ที่รันได้จริงบน localhost แล้วบอกผมทุกขั้นตอน
ที่ verify ผ่าน ก่อนไปขั้นต่อไป
```

## 6. Debug (when something breaks)

```
[error message เต็มๆ วางตรงนี้]

ใช้ /debug — reproduce ก่อน, isolate ว่า bug อยู่ database/backend/frontend ชั้นไหน,
แล้วค่อยเสนอ fix พร้อมบอกว่า verify ยังไง
```

## 7. Deploy

```
build นี้ verify แล้วว่าใช้ได้จริงบน local — ใช้ /deploy พาไปขึ้น [vercel|railway]
แล้วเปิดลิงก์จริงให้ผมดูว่า primary action ใช้งานได้
```

## Composing your own

If none of the above fits, use `framework/prompt-frameworks.md` to pick a shape (RACE for a fresh build request, CTF for a narrow bug fix) — the goal is always: state the goal in one sentence, the constraint in the next, and which skill should own the work.
