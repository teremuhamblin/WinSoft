# ==========================================
# WinSoft - Main Script
# Version : 1.0
# Auteur  : The MadDoG.tmdg
# ==========================================

$ProjectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$LogFile = "$ProjectRoot\logs\unified_$(Get-Date -Format 'yyyyMMdd_HHmmss').log"

function Log {
    param([string]$Message)
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    Write-Host "[INFO] $Message"
    Add-Content -Path $LogFile -Value "$timestamp [INFO] $Message"
}

# Charger la détection OS
. "$ProjectRoot\scripts\detect.ps1"

$os = Get-WindowsVersion
Log "Système détecté : $os"

# Modules communs
Log "Exécution des modules communs"
. "$ProjectRoot\scripts\common\debloat-common.ps1"
. "$ProjectRoot\scripts\common\optimize-common.ps1"

# Modules spécifiques selon l’OS
switch ($os) {
    "Win10" {
        Log "Modules spécifiques Windows 10"
        . "$ProjectRoot\scripts\win10\debloat-win10.ps1"
        . "$ProjectRoot\scripts\win10\optimize-win10.ps1"
    }
    "Win11" {
        Log "Modules spécifiques Windows 11"
        . "$ProjectRoot\scripts\win11\debloat-win11.ps1"
        . "$ProjectRoot\scripts\win11\optimize-win11.ps1"
    }
    default {
        Log "Version Windows non reconnue — modules spécifiques ignorés"
    }
}

Log "===== FIN DU TRAITEMENT ====="
