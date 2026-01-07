# Script for å konvertere HEIC til JPG ved å åpne i Paint og lagre
$heicFiles = Get-ChildItem "*.HEIC"

foreach ($file in $heicFiles) {
    $jpgName = $file.BaseName + ".jpg"
    Write-Host "Åpner $($file.Name) i Paint - lagre som $jpgName og lukk Paint..."
    
    # Åpne i Paint
    Start-Process "mspaint.exe" -ArgumentList $file.FullName -Wait
}

Write-Host "`nFerdig! Husk å lagre hver fil som JPG i Paint før du lukker." -ForegroundColor Yellow
