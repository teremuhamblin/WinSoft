# WinSoft - shared/cleanup.ps1
# Nettoyage basique et sûr du système

Write-Host "[CLEANUP] Nettoyage en cours..." -ForegroundColor Cyan

# Nettoyage du dossier Temp utilisateur
try {
    $temp = "$env:TEMP\*"
    Remove-Item $temp -Recurse -Force -ErrorAction SilentlyContinue
    Write-Host "[OK] Temp utilisateur nettoyé."
} catch {
    Write-Host "[WARN] Impossible de nettoyer le Temp utilisateur."
}

# Nettoyage du dossier Temp Windows
try {
    $winTemp = "C:\Windows\Temp\*"
    Remove-Item $winTemp -Recurse -Force -ErrorAction SilentlyContinue
    Write-Host "[OK] Temp Windows nettoyé."
} catch {
    Write-Host "[WARN] Impossible de nettoyer le Temp Windows."
}

# Vider la corbeille
try {
    Clear-RecycleBin -Force -ErrorAction SilentlyContinue
    Write-Host "[OK] Corbeille vidée."
} catch {
    Write-Host "[WARN] Impossible de vider la corbeille."
}

Write-Host "[DONE] Nettoyage terminé." -ForegroundColor Green
