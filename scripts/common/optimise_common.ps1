# ==========================================
# WinSoft - Optimisation Commune
# Version : 1.0
# Auteur  : The MadDoG.tmdg 
# ==========================================

$ProjectRoot = Split-Path -Parent (Split-Path -Parent $PSScriptRoot)
$LogFile = "$ProjectRoot\logs\optimize-common_$(Get-Date -Format 'yyyyMMdd_HHmmss').log"

function Log {
    param([string]$Message)
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    Write-Host "[INFO] $Message"
    Add-Content -Path $LogFile -Value "$timestamp [INFO] $Message"
}

Log "Début du module Optimisation Commune"

# Désactivation télémétrie et services inutiles
$services = @("DiagTrack", "dmwappushservice", "RetailDemo")
foreach ($svc in $services) {
    Log "Désactivation service : $svc"
    Set-Service -Name $svc -StartupType Disabled -ErrorAction SilentlyContinue
    Stop-Service -Name $svc -Force -ErrorAction SilentlyContinue
}

# Nettoyage fichiers temporaires
Log "Nettoyage des fichiers temporaires"
Remove-Item "$env:TEMP\*" -Recurse -Force -ErrorAction SilentlyContinue

Log "Fin du module Optimisation Commune"
