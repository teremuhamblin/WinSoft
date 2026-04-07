# ==========================================
# WinSoft - Optimisation Windows 10
# Version : 1.0
# Auteur  : The MadDoG.tmdg 
# ==========================================

$ProjectRoot = Split-Path -Parent (Split-Path -Parent $PSScriptRoot)
$LogFile = "$ProjectRoot\logs\optimize-win10_$(Get-Date -Format 'yyyyMMdd_HHmmss').log"

function Log {
    param([string]$Message)
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    Write-Host "[INFO] $Message"
    Add-Content -Path $LogFile -Value "$timestamp [INFO] $Message"
}

Log "Début du module Optimisation Windows 10"

# Désactivation Cortana
Log "Désactivation de Cortana"
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCortana /t REG_DWORD /d 0 /f

# Optimisation visuelle
Log "Optimisation des effets visuels"
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f

Log "Fin du module Optimisation Windows 10"
