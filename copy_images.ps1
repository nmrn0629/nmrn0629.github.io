
$ErrorActionPreference = "Stop"

$src_logo = "C:\Users\ah266\.gemini\antigravity\brain\c37bdd88-a573-4975-b8cb-26fd3e4e2776\harmogrow_logo_1770187828676.png"
$src_banner = "C:\Users\ah266\.gemini\antigravity\brain\c37bdd88-a573-4975-b8cb-26fd3e4e2776\harmogrow_banner_1770187843577.png"
$dest_path = "c:\Users\ah266\OneDrive\ドキュメント\projects\nmrn0629.github.io"

Write-Host "Starting copy operation..."
Write-Host "Source Logo: $src_logo"
Write-Host "Destination Path: $dest_path"

try {
    Copy-Item -LiteralPath $src_logo -Destination "$dest_path\logo.png" -Force
    Write-Host "Logo copy command executed."
} catch {
    Write-Host "Error copying logo: $_"
}

try {
    Copy-Item -LiteralPath $src_banner -Destination "$dest_path\banner.png" -Force
    Write-Host "Banner copy command executed."
} catch {
    Write-Host "Error copying banner: $_"
}

if (Test-Path "$dest_path\logo.png") { 
    $item = Get-Item "$dest_path\logo.png"
    Write-Host "VERIFIED: Logo exists. Size: $($item.Length) bytes" 
} else { 
    Write-Host "FAILED: Logo MISSING" 
}

if (Test-Path "$dest_path\banner.png") { 
    $item = Get-Item "$dest_path\banner.png"
    Write-Host "VERIFIED: Banner exists. Size: $($item.Length) bytes" 
} else { 
    Write-Host "FAILED: Banner MISSING" 
}
