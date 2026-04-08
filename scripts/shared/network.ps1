
# WinSoft - shared/network.ps1
# Diagnostic réseau rapide

Write-Host "[NETWORK] Diagnostic réseau..." -ForegroundColor Cyan

# Adresse IP
$ip = (Get-NetIPAddress -AddressFamily IPv4 -ErrorAction SilentlyContinue |
       Where-Object {$_.IPAddress -notlike "169.*"}).IPAddress
Write-Host "Adresse IP : $ip"

# Ping Google DNS
Write-Host "Test de connectivité (8.8.8.8)..."
if (Test-Connection -Count 1 -Quiet 8.8.8.8) {
    Write-Host "[OK] Connexion Internet opérationnelle." -ForegroundColor Green
} else {
    Write-Host "[ERROR] Pas d'accès Internet." -ForegroundColor Red
}

# Liste des interfaces
Write-Host "`nInterfaces réseau :"
Get-NetAdapter | Select-Object Name, Status, LinkSpeed | Format-Table -AutoSize
