---

# 🟥 **Script : `apply-profile.ps1`**
Ce script lit un fichier `.txt` du dossier `shared/` et applique les réglages correspondants.

Il est **simple**, **sûr**, **compatible Windows 10/11**, et parfaitement adapté à WinSoft 1.1.

```powershell
# WinSoft - shared/apply-profile.ps1
param(
    [Parameter(Mandatory=$true)]
    [ValidateSet("gaming", "minimal", "performance")]
    [string]$Profile
)

Write-Host "[PROFILE] Application du profil '$Profile'..." -ForegroundColor Cyan

$profilePath = Join-Path $PSScriptRoot "$Profile.txt"

if (-not (Test-Path $profilePath)) {
    Write-Host "[ERROR] Profil introuvable : $profilePath" -ForegroundColor Red
    exit 1
}

# Lecture du fichier
$settings = Get-Content $profilePath | Where-Object { $_ -notmatch "^#" -and $_.Trim() -ne "" }

foreach ($line in $settings) {
    $key, $value = $line -split "="

    switch ($key) {

        "DisableBackgroundApps" {
            Write-Host "• Désactivation des applications en arrière-plan..."
            Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" -Name "GlobalUserDisabled" -Value $value -Force
        }

        "DisableXboxServices" {
            Write-Host "• Désactivation des services Xbox..."
            Get-Service *xbox* | Stop-Service -Force -ErrorAction SilentlyContinue
            Get-Service *xbox* | Set-Service -StartupType Disabled -ErrorAction SilentlyContinue
        }

        "DisableTelemetry" {
            Write-Host "• Réduction de la télémétrie..."
            Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "AllowTelemetry" -Value 0 -Force
        }

        "DisableSearchIndexing" {
            Write-Host "• Désactivation de l’indexation..."
            Stop-Service WSearch -Force -ErrorAction SilentlyContinue
            Set-Service WSearch -StartupType Disabled -ErrorAction SilentlyContinue
        }

        "PowerPlan" {
            Write-Host "• Application du mode d’alimentation : $value"
            powercfg /setactive SCHEME_MIN
            if ($value -eq "HighPerformance") { powercfg /setactive SCHEME_MIN }
            if ($value -eq "UltimatePerformance") { powercfg /setactive SCHEME_MAX }
        }

        "NetworkBoost" {
            Write-Host "• Optimisation réseau..."
            Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" -Name "TcpAckFrequency" -Value 1 -Force
        }

        "TempCleanup" {
            Write-Host "• Nettoyage des fichiers temporaires..."
            & "$PSScriptRoot\cleanup.ps1"
        }

        default {
            Write-Host "[WARN] Clé inconnue : $key"
        }
    }
}

Write-Host "[DONE] Profil '$Profile' appliqué." -ForegroundColor Green
