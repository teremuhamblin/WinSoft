# ==========================================
# WinSoft - Debloat Commun
# Version : 1.0
# Auteur  : The MadDoG.tmdg 
# ==========================================

$ProjectRoot = Split-Path -Parent (Split-Path -Parent $PSScriptRoot)
$LogFile = "$ProjectRoot\logs\debloat-common_$(Get-Date -Format 'yyyyMMdd_HHmmss').log"

function Log {
    param([string]$Message)
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    Write-Host "[INFO] $Message"
    Add-Content -Path $LogFile -Value "$timestamp [INFO] $Message"
}

Log "Début du module Debloat Commun"

$apps = Get-Content "$ProjectRoot\config\apps-common.txt"

foreach ($app in $apps) {
    if ($app.Trim() -ne "") {
        Log "Suppression (commun) : $app"
        Get-AppxPackage -Name $app -AllUsers | Remove-AppxPackage -ErrorAction SilentlyContinue
        Get-AppxProvisionedPackage -Online | Where-Object { $_.DisplayName -eq $app } | Remove-AppxProvisionedPackage -Online -ErrorAction SilentlyContinue
    }
}

Log "Fin du module Debloat Commun"
