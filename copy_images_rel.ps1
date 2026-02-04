
$ErrorActionPreference = "Stop"

$src_logo = "C:\Users\ah266\.gemini\antigravity\brain\c37bdd88-a573-4975-b8cb-26fd3e4e2776\harmogrow_logo_1770187828676.png"
$src_banner = "C:\Users\ah266\.gemini\antigravity\brain\c37bdd88-a573-4975-b8cb-26fd3e4e2776\harmogrow_banner_1770187843577.png"

Write-Host "Current Directory: $((Get-Location).Path)"

try {
    Copy-Item -LiteralPath $src_logo -Destination ".\logo.png" -Force
    Write-Host "Logo copied."
} catch {
    Write-Host "Error copying logo: $_"
}

try {
    Copy-Item -LiteralPath $src_banner -Destination ".\banner.png" -Force
    Write-Host "Banner copied."
} catch {
    Write-Host "Error copying banner: $_"
}

if (Test-Path ".\logo.png") { Write-Host "VERIFIED: Logo exists." } else { Write-Host "FAILED: Logo MISSING" }
if (Test-Path ".\banner.png") { Write-Host "VERIFIED: Banner exists." } else { Write-Host "FAILED: Banner MISSING" }
