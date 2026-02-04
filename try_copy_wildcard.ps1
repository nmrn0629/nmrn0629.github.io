
$ErrorActionPreference = "Stop"
try {
    # Resolve path using wildcard to avoid encoding issues with 'Documents'
    $targetPath = Resolve-Path "C:\Users\ah266\OneDrive\*\projects\nmrn0629.github.io"
    if (-not $targetPath) { throw "Path not found with wildcard" }
    
    Set-Location $targetPath.Path
    Write-Host "Resolved and moved to: $($targetPath.Path)"
    
    $src_logo = "C:\Users\ah266\.gemini\antigravity\brain\c37bdd88-a573-4975-b8cb-26fd3e4e2776\harmogrow_logo_1770187828676.png"
    $src_banner = "C:\Users\ah266\.gemini\antigravity\brain\c37bdd88-a573-4975-b8cb-26fd3e4e2776\harmogrow_banner_1770187843577.png"

    Copy-Item -LiteralPath $src_logo -Destination ".\logo.png" -Force
    Write-Host "Copied logo.png"
    
    Copy-Item -LiteralPath $src_banner -Destination ".\banner.png" -Force
    Write-Host "Copied banner.png"

    if (Test-Path ".\logo.png") { Write-Host "Verification: logo.png exists" }
} catch {
    Write-Host "Error: $_"
    exit 1
}
