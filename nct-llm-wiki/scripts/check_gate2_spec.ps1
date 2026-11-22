$specPath = "specs\slide_spec.md"

Write-Host "=== 執行 Gate 2: Slide Spec 量化防破版檢查 ==="

if (-not (Test-Path $specPath)) {
    Write-Host "❌ 找不到逐頁規格文件 specs\slide_spec.md" -ForegroundColor Red
    Exit 1
}

$specContent = [System.IO.File]::ReadAllText((Resolve-Path $specPath), [System.Text.Encoding]::UTF8)
$slides = $specContent -split "## Slide "
$errors = @()

for ($i = 1; $i -lt $slides.Count; $i++) {
    $slideText = $slides[$i]
    $firstLine = ($slideText -split "\r?\n")[0]
    
    # 1. 檢查字數限制 (<= 120 字)
    if ($slideText -match "WordCount:\s*(\d+)") {
        $count = [int]$matches[1]
        if ($count -gt 120) {
            $errors += "【Gate 2 超載錯誤】: Slide $firstLine WordCount 為 $count，超過 120 字上限！"
        }
    } else {
        $errors += "【Gate 2 格式錯誤】: Slide $firstLine 未標明 WordCount！"
    }

    # 2. 檢查卡片數量 (<= 4 張)
    $cards = [regex]::Matches($slideText, "Card\s*\d+")
    if ($cards.Count -gt 4) {
        $errors += "【Gate 2 排版錯誤】: Slide $firstLine 包含 $($cards.Count) 張卡片，超過 4 張上限！"
    }

    # 3. 檢查來源標記
    if ($slideText -notmatch "\[Source:\s*(wiki|AGENTS)") {
        $errors += "【Gate 2 溯源錯誤】: Slide $firstLine 未附帶 [Source: ...] 標記！"
    }
}

if ($errors.Count -eq 0) {
    Write-Host "✅ Gate 2: Slide Spec 量化檢查 100% 通過！字數安全（<=120字）、卡片佈局嚴謹（<=4張）、溯源完整。" -ForegroundColor Green
    Exit 0
} else {
    Write-Host "❌ Gate 2 攔截到錯誤：" -ForegroundColor Red
    foreach ($e in $errors) { Write-Host " - $e" -ForegroundColor Red }
    Exit 1
}
