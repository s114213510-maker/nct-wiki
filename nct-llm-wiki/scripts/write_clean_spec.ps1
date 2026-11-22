$spec = @'
# Slide Spec: Zero-Knowledge Beginner Guide to NCT

> Gate 2 Quantification Rules:
> 1. Word count <= 120 chars per slide.
> 2. Info cards <= 4 per slide.
> 3. Source trace tag required: [Source: wiki/...]

---

## Slide 1: Cover and Introduction
- SlideID: 01
- Theme: NCT Pearl Neo Champagne Holographic Cyber
- Title: 解碼 K-Pop 最前衛的男團品牌：什麼是 NCT？
- Subtitle: 給零基礎路人的新文化技術全圖解
- Cards (3):
  - Card 1 [品牌核心]: Neo Culture Technology，2016年創立的大型男團品牌。
  - Card 2 [顛覆規則]: 開放性、無限擴張、跨隊彈性組合。
  - Card 3 [應援標誌]: 官方應援色珍珠香檳綠，雷射全息未來科技感。
- WordCount: 78
- Source: [Source: wiki/concepts/neo_culture_technology.md]

---

## Slide 2: Core System Architecture
- SlideID: 02
- Theme: Holographic Hub Network
- Title: 像科技公司一樣運作的偶像體制
- Cards (4):
  - Card 1 [NCT U]: 輪替旗艦隊，依曲風跨隊彈性組合。
  - Card 2 [NCT 127]: 首爾固定隊，前衛實驗重低音風格。
  - Card 3 [NCT DREAM]: 青少年養成隊轉為永久固定隊。
  - Card 4 [WayV / WISH]: 海外戰略大中華隊與日本最終分隊。
- WordCount: 94
- Source: [Source: wiki/concepts/neo_culture_technology.md]

---

## Slide 3: NCT 127 Seoul Unit
- SlideID: 03
- Theme: Fact Check Palace Metallic & High-Contrast Laser
- Title: NCT 127：首爾經度上的先鋒本隊
- Cards (3):
  - Card 1 [隊名由來]: 東經127度代表首爾，象徵從韓流發源地出發。
  - Card 2 [音樂視覺]: 景福宮融合現代雷射，前衛重節奏刀群舞。
  - Card 3 [代表作 Fact Check]: 展現首爾本隊不可動搖的君王風範。
- WordCount: 86
- Source: [Source: wiki/units/nct_127.md]

---

## Slide 4: NCT DREAM Youth System
- SlideID: 04
- Theme: We Go Up Street Skate & Retro High-Saturation Green
- Title: NCT DREAM：打破畢業制的青春奇蹟
- Cards (3):
  - Card 1 [原初規則]: 滿20歲強制畢業離隊，曾帶來情感割裂。
  - Card 2 [代表作 We Go Up]: 畢業前的青春代表作，滑板奔跑動感。
  - Card 3 [2020體制修正]: 官方正式廢除畢業制，7DREAM 永久固定。
- WordCount: 92
- Source: [Source: wiki/units/nct_dream.md]

---

## Slide 5: WayV Global Sci-Fi Unit
- SlideID: 05
- Theme: Turn Back Time Clock Machinery & Dark Red Alert
- Title: WayV：穿梭時空的華語未來感
- Cards (3):
  - Card 1 [在地化戰略]: 立足大中華區、放眼全球的國際化分隊。
  - Card 2 [代表作 Turn Back Time]: 時空倒流、機械牢籠覺醒的硬派科幻。
  - Card 3 [成熟演進]: 成員調整後，以5人體制穩健展開全球巡迴。
  - Card 4 [雙語發行]: 兼具中英雙語版本，全球化舞台表現。
- WordCount: 98
- Source: [Source: wiki/units/wayv.md]

---

## Slide 6: NCT WISH Final Boundary
- SlideID: 06
- Theme: Steady Y2K Pastel White & Morning Mist Green
- Title: NCT WISH：無限擴張的治癒終章
- Cards (3):
  - Card 1 [SM 3.0 改革宣告]: 2023年宣告終止無限擴張，回歸固定。
  - Card 2 [最後一支分隊]: 2024年東京巨蛋出道，日韓6人清新編制。
  - Card 3 [代表作 Steady]: 千禧Y2K輕快節奏，薄荷糖果治癒風格。
- WordCount: 89
- Source: [Source: wiki/units/nct_wish.md]

---

## Slide 7: Engineering Behind the Deck
- SlideID: 07
- Theme: System Graph & Shift-Left Circuit
- Title: 幕後揭秘：本簡報的 LLM Wiki 與 Shift-Left 工程架構
- Cards (3):
  - Card 1 [Gate 1 SSOT 查核]: 大綱前鎖死成員狀態，攔截時間線幻覺。
  - Card 2 [Gate 2 規格防破版]: 單頁字數卡死120字內，杜絕文字溢出。
  - Card 3 [大圈很少轉]: 小圈快速局部修正，保證最終 HTML 100% 精準。
- WordCount: 96
- Source: [Source: AGENTS.md]
'@

[System.IO.File]::WriteAllText("specs\slide_spec.md", $spec, [System.Text.Encoding]::UTF8)
Write-Output "Successfully saved specs\slide_spec.md in clean UTF-8."
