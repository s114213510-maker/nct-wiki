$members = @(
    @{ id = "taeyong"; name = "泰容 (Taeyong)"; status = "inactive"; units = @("nct_127", "nct_u"); role = "NCT 總隊長 / 127 隊長 / 主舞 / 主 Rapper"; history = "2016年以 NCT U《The 7th Sense》及 NCT 127 出道。2024年4月以海軍軍樂隊身分入伍服役中。" },
    @{ id = "taeil"; name = "泰一 (Taeil)"; status = "former"; units = @("nct_127", "nct_u"); role = "前主唱 (離隊年份: 2024年)"; history = "2016年以 NCT U 及 NCT 127 出道。2024年8月因涉刑事案件遭官方開除並終止專屬合約離隊。" },
    @{ id = "johnny"; name = "Johnny (徐英浩)"; status = "active"; units = @("nct_127", "nct_u"); role = "副 Rapper / 副唱"; history = "2017年1月迷你二輯《Limitless》加入 NCT 127。現役活躍中。" },
    @{ id = "yuta"; name = "悠太 (Yuta)"; status = "active"; units = @("nct_127", "nct_u"); role = "主舞 / 副唱"; history = "2016年以 NCT 127 出道，首位日籍成員。現役活躍並發行個人 SOLO。" },
    @{ id = "kun"; name = "錕 (Kun)"; status = "active"; units = @("wayv", "nct_u"); role = "WayV 隊長 / 主唱"; history = "2018年 NCT 2018 正式亮相，2019年以 WayV 隊長出道。現役活躍中。" },
    @{ id = "doyoung"; name = "道英 (Doyoung)"; status = "active"; units = @("nct_127", "nct_u"); role = "主唱"; history = "2016年 NCT U 出道，2017年加入 NCT 127。現役活躍並參與小分隊 DOJAEJUNG。" },
    @{ id = "ten"; name = "Ten (李永欽)"; status = "active"; units = @("wayv", "nct_u"); role = "WayV 主舞 / 主唱"; history = "2016年以 NCT U 出道，2019年以 WayV 出道，泰籍成員。現役活躍並展開全球 SOLO。" },
    @{ id = "jaehyun"; name = "在玹 (Jaehyun)"; status = "inactive"; units = @("nct_127", "nct_u"); role = "主唱 / 領舞 / 門面"; history = "2016年以 NCT U 及 NCT 127 出道。2024年11月以陸軍軍樂隊身分入伍服役中。" },
    @{ id = "winwin"; name = "昀昀 (Winwin)"; status = "former"; units = @("nct_127", "wayv", "nct_u"); role = "前領舞 (離隊年份: 2026年)"; history = "2016年 NCT 127 出道，2019年轉為專注 WayV。2026年7月專屬合約期滿正式結束合作離隊。" },
    @{ id = "jungwoo"; name = "廷祐 (Jungwoo)"; status = "active"; units = @("nct_127", "nct_u"); role = "領唱 / 領舞"; history = "2018年加入 NCT 2018 及 NCT 127。現役活躍並參與 DOJAEJUNG。" },
    @{ id = "lucas"; name = "Lucas (黃旭熙)"; status = "former"; units = @("wayv", "nct_u"); role = "前 Rapper (離隊年份: 2023年)"; history = "2018年亮相，2019年 WayV 出道。2023年5月官方宣告正式退出 NCT 及 WayV。" },
    @{ id = "mark"; name = "Mark (李敏亨)"; status = "former"; units = @("nct_127", "nct_dream", "nct_u"); role = "前隊長/主 Rapper (離隊年份: 2026年)"; history = "2016年三隊全勤出道。2018年底自 DREAM 畢業，2020年取消畢業制歸隊。2026年4月專屬合約期滿正式結束合作離隊。" },
    @{ id = "xiaojun"; name = "肖俊 (Xiaojun)"; status = "active"; units = @("wayv", "nct_u"); role = "WayV 主唱"; history = "2019年以 WayV 出道，多次參與 NCT U 打歌及音放 MC。現役活躍中。" },
    @{ id = "hendery"; name = "亨德利 (Hendery)"; status = "active"; units = @("wayv", "nct_u"); role = "WayV 主 Rapper"; history = "2019年以 WayV 出道。現役活躍中。" },
    @{ id = "renjun"; name = "仁俊 (Renjun)"; status = "active"; units = @("nct_dream", "nct_u"); role = "NCT DREAM 主唱"; history = "2016年以 NCT DREAM 出道，吉林朝鮮族。現役活躍中。" },
    @{ id = "jeno"; name = "Jeno (李帝努)"; status = "active"; units = @("nct_dream", "nct_u"); role = "NCT DREAM 隊長 / 領舞 / 主 Rapper"; history = "2016年以 NCT DREAM 出道。現役活躍中。" },
    @{ id = "haechan"; name = "楷燦 (Haechan)"; status = "active"; units = @("nct_127", "nct_dream", "nct_u"); role = "NCT 127 & DREAM 主唱"; history = "2016年雙隊出道，跨隊核心成員。現役活躍中。" },
    @{ id = "jaemin"; name = "渽民 (Jaemin)"; status = "active"; units = @("nct_dream", "nct_u"); role = "NCT DREAM 領舞 / 領 Rapper / 門面"; history = "2016年以 NCT DREAM 出道。現役活躍中。" },
    @{ id = "yangyang"; name = "揚揚 (Yangyang)"; status = "active"; units = @("wayv", "nct_u"); role = "WayV 主 Rapper / 主舞 / 忙內"; history = "2019年以 WayV 出道，德籍華裔。現役活躍中。" },
    @{ id = "chenle"; name = "辰樂 (Chenle)"; status = "active"; units = @("nct_dream", "nct_u"); role = "NCT DREAM 主唱"; history = "2016年以 NCT DREAM 出道。現役活躍中。" },
    @{ id = "jisung"; name = "志晟 (Jisung)"; status = "active"; units = @("nct_dream", "nct_u"); role = "NCT DREAM 主舞 / 忙內"; history = "2016年以 NCT DREAM 出道，團內年齡最小成員。現役活躍中。" },
    @{ id = "sion"; name = "Sion (吳是溫)"; status = "active"; units = @("nct_wish", "nct_u"); role = "NCT WISH 隊長 / 領唱"; history = "2024年以 NCT WISH 出道。現役活躍中。" },
    @{ id = "riku"; name = "Riku (前田陸)"; status = "active"; units = @("nct_wish", "nct_u"); role = "NCT WISH 主 Rapper"; history = "2024年以 NCT WISH 出道。現役活躍中。" },
    @{ id = "yushi"; name = "Yushi (得能勇志)"; status = "active"; units = @("nct_wish", "nct_u"); role = "NCT WISH 主舞 / 副唱"; history = "2024年以 NCT WISH 出道。現役活躍中。" },
    @{ id = "jaehee"; name = "Jaehee (金栽禧)"; status = "active"; units = @("nct_wish", "nct_u"); role = "NCT WISH 主唱"; history = "2024年以 NCT WISH 出道 (原名大英)。現役活躍中。" },
    @{ id = "ryo"; name = "Ryo (廣瀨遼)"; status = "active"; units = @("nct_wish", "nct_u"); role = "NCT WISH 副唱"; history = "2024年以 NCT WISH 出道。現役活躍中。" },
    @{ id = "sakuya"; name = "Sakuya (藤永咲哉)"; status = "active"; units = @("nct_wish", "nct_u"); role = "NCT WISH Rapper / 忙內"; history = "2024年以 NCT WISH 出道。現役活躍中。" }
)

$targetDir = "wiki\members"
if (-not (Test-Path $targetDir)) { New-Item -ItemType Directory -Path $targetDir -Force | Out-Null }

foreach ($m in $members) {
    $unitsJson = ($m.units | ForEach-Object { "'$_'" }) -join ", "
    $unitLinks = ($m.units | ForEach-Object { "[[../units/$_|$($_.ToUpper())]]" }) -join ", "
    $md = @"
---
title: $($m.name)
id: $($m.id)
type: member
status: $($m.status)
units: [$unitsJson]
---

# $($m.name)

## 1. 基本資訊與狀態
- **成員 ID**：`$($m.id)`
- **當前狀態 (Status)**：`$($m.status)`
- **定位**：$($m.role)
- **所屬分隊**：$unitLinks

---

## 2. 活動歷史與轉折
$($m.history)

---

## 3. 雙向關聯索引
- 總體架構：[[../concepts/neo_culture_technology|體制概念說明]]
- 重大時間線：[[../timeline/system_timeline|體制發展重大時間線]]
- 術語解釋：[[../glossary/kpop_terms|術語彙整表]]
"@
    $filePath = Join-Path $targetDir "$($m.id).md"
    [System.IO.File]::WriteAllText($filePath, $md, [System.Text.Encoding]::UTF8)
}

Write-Output "Successfully generated $($members.Count) member wiki files in $targetDir"
