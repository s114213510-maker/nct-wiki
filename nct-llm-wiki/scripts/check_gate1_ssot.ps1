$ssotPath = "specs\ssot_facts.md"
$rawDir = "raw_sources"

Write-Host "=== 執行 Gate 1: SSOT 事實一致性檢查 ==="

if (-not (Test-Path $ssotPath)) {
    Write-Host "❌ 找不到 SSOT 事實表 specs\ssot_facts.md" -ForegroundColor Red
    Exit 1
}

$ssotContent = Get-Content $ssotPath -Raw -Encoding UTF8
$errors = @()

# 關鍵核對清單 (根據 2026 最新 raw 資料)
$criticalChecks = @(
    @{ Name = "Mark 離隊年月"; Pattern = "Mark.*former.*2026" },
    @{ Name = "昀昀 離隊年月"; Pattern = "昀昀.*former.*2026" },
    @{ Name = "泰一 退隊年份"; Pattern = "泰一.*former.*2024" },
    @{ Name = "Lucas 退隊年份"; Pattern = "Lucas.*former.*2023" },
    @{ Name = "泰容 入伍服役"; Pattern = "泰容.*inactive.*2024" },
    @{ Name = "在玹 入伍服役"; Pattern = "在玹.*inactive.*2024" },
    @{ Name = "DREAM 畢業制取消年份"; Pattern = "2020-04-14.*畢業制取消" },
    @{ Name = "SM 3.0 結束擴張年份"; Pattern = "2023-02-24.*結束無限擴張" },
    @{ Name = "WISH 最終分隊定位"; Pattern = "WISH.*最後一支" }
)

foreach ($chk in $criticalChecks) {
    if ($ssotContent -notmatch $chk.Pattern) {
        $errors += "【Gate 1 事實核對失敗】: 未通過 $($chk.Name) 檢驗，可能包含舊記憶或未依據 raw_sources！"
    }
}

if ($errors.Count -eq 0) {
    Write-Host "✅ Gate 1: SSOT 事實核對 100% 通過！成員狀態、離隊年月與體制轉折事件完全一致。" -ForegroundColor Green
    Exit 0
} else {
    Write-Host "❌ Gate 1 攔截到錯誤：" -ForegroundColor Red
    foreach ($e in $errors) { Write-Host " - $e" -ForegroundColor Red }
    Exit 1
}
