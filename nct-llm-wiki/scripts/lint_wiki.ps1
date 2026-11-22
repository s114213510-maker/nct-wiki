$wikiDir = "wiki"
$allFiles = Get-ChildItem -Path $wikiDir -Recurse -Filter *.md

Write-Host "=== 執行 Wiki Lint 檢查 ==="
Write-Host "總計檢測檔案數: $($allFiles.Count)"

$errors = @()
$warnings = @()

# 1. 建立所有文檔 ID 與路徑快取
$docMap = @{}
foreach ($file in $allFiles) {
    $content = Get-Content $file.FullName -Raw -Encoding UTF8
    $id = $file.BaseName
    $docMap[$id] = @{
        Path = $file.FullName
        Content = $content
        InboundLinks = 0
    }
}

# 2. 統計 Inbound Links (反向連結 - 檢查孤島頁面)
foreach ($docKey in $docMap.Keys) {
    $currentContent = $docMap[$docKey].Content
    foreach ($targetKey in $docMap.Keys) {
        if ($docKey -ne $targetKey) {
            if ($currentContent -match "\[\[.*$targetKey.*\]\]" -or $currentContent -match "$targetKey\.md") {
                $docMap[$targetKey].InboundLinks++
            }
        }
    }
}

foreach ($docKey in $docMap.Keys) {
    if ($docMap[$docKey].InboundLinks -eq 0 -and $docKey -ne "index") {
        $errors += "【孤島頁面錯誤 (Orphan Page)】: $docKey.md 沒有任何反向連結！"
    }
}

# 3. 檢查 Status Consistency (狀態一致性)
# 若成員為 former，其描述中必須包含離隊/退隊年份說明
$memberFiles = Get-ChildItem -Path "$wikiDir\members" -Filter *.md
foreach ($mFile in $memberFiles) {
    $content = Get-Content $mFile.FullName -Raw -Encoding UTF8
    if ($content -match "status:\s*former") {
        if ($content -notmatch "離隊年份" -and $content -notmatch "退隊") {
            $errors += "【狀態一致性錯誤】: 成員 $($mFile.BaseName) 標記為 former，但未載明離隊年份或退隊原因說明！"
        }
    }
}

# 4. 檢查 Jargon Pre-definition (術語前置與對照)
$glossaryPath = "$wikiDir\glossary\kpop_terms.md"
if (-not (Test-Path $glossaryPath)) {
    $errors += "【術語檢查錯誤】: 缺乏 kpop_terms.md 術語辭典！"
} else {
    $glossaryContent = Get-Content $glossaryPath -Raw -Encoding UTF8
    $requiredTerms = @("回歸", "應援色", "畢業制", "無限擴張", "體制修正事件")
    foreach ($term in $requiredTerms) {
        if ($glossaryContent -notmatch $term) {
            $errors += "【術語缺漏】: Glossary 未定義關鍵術語: $term"
        }
    }
}

# 輸出結果
Write-Host "----------------------------------------"
if ($errors.Count -eq 0) {
    Write-Host "✅ Wiki Lint 檢查全部通過！無孤島頁面，狀態一致性良好，術語定義完備。" -ForegroundColor Green
    Exit 0
} else {
    Write-Host "❌ 發現 $($errors.Count) 項 Lint 錯誤：" -ForegroundColor Red
    foreach ($err in $errors) {
        Write-Host " - $err" -ForegroundColor Red
    }
    Exit 1
}
