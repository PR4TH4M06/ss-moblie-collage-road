# Restores the yellow SS Mobile UI (before MAAAX-style experiment)
$root = Split-Path $PSScriptRoot -Parent
$bak = Join-Path $root "_ui-backup-original"
if (-not (Test-Path $bak)) {
  Write-Error "Backup folder missing: $bak"
  exit 1
}
Copy-Item (Join-Path $bak "page.tsx") (Join-Path $root "app\page.tsx") -Force
Copy-Item (Join-Path $bak "globals.css") (Join-Path $root "app\globals.css") -Force
Copy-Item (Join-Path $bak "layout.tsx") (Join-Path $root "app\layout.tsx") -Force
Copy-Item (Join-Path $bak "Logo.tsx") (Join-Path $root "components\Logo.tsx") -Force
Write-Host "Original UI restored from _ui-backup-original"
