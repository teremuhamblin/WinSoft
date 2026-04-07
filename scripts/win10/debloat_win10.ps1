# ==========================================
# WinSoft - Debloat Windows 10
# Version : 1.0
# Auteur  : The MadDoG.tmdg 
# ==========================================

$ProjectRoot = Split-Path -Parent (Split-Path -Parent $PSScriptRoot)
$LogFile = "$ProjectRoot\logs\debloat-win10_$(Get-Date -Format 'yyyyMMdd_HHmmss').log"

function Log {
    param([string]$Message)
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    Write-Host "[INFO] $Message"
    Add-Content -Path $LogFile -Value "$timestamp [INFO] $Message"
}

Log "Début du module Debloat Windows 10"

$apps = Get-Content "$ProjectRoot\config\apps-win10.txt"

foreach ($app in $apps) {
    if ($app.Trim() -ne "") {
        Log "Suppression Win10 : $app"
        Get-AppxPackage -Name $app -AllUsers | Remove-AppxPackage -ErrorAction SilentlyContinue
    }
}

Log "Fin du module Debloat Windows 10"
