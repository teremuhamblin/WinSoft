# WinSoft v1.1 AO Release - Menu principal
# scripts/WinSoft.ps1

$sharedPath = Join-Path $PSScriptRoot "shared"

function Show-Menu {
    Clear-Host
    Write-Host "==============================" -ForegroundColor Cyan
    Write-Host "        WinSoft v1.1"
    Write-Host "        AO Release"
    Write-Host "==============================" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "1) Appliquer un profil"
    Write-Host "2) Outils partagés"
    Write-Host "3) Quitter"
    Write-Host ""
}

function Show-Profiles {
    Clear-Host
    Write-Host "=== Profils disponibles ===" -ForegroundColor Cyan
    Write-Host "1) Gaming"
    Write-Host "2) Minimal"
    Write-Host "3) Performance"
    Write-Host "4) Retour"
    Write-Host ""
}

function Apply-Profile {
    Show-Profiles
    $choice = Read-Host "Sélectionnez un profil"

    switch ($choice) {
        "1" { $profile = "gaming" }
        "2" { $profile = "minimal" }
        "3" { $profile = "performance" }
        "4" { return }
        default {
            Write-Host "Choix invalide."
            Start-Sleep 1
            return
        }
    }

    $script = Join-Path $sharedPath "apply-profile.ps1"
    Write-Host "Application du profil '$profile'..."
    & $script -Profile $profile
    Pause
}

function Show-Tools {
    Clear-Host
    Write-Host "=== Outils partagés ===" -ForegroundColor Cyan
    Write-Host "1) Nettoyage (cleanup.ps1)"
    Write-Host "2) Diagnostic réseau (network.ps1)"
    Write-Host "3) Analyse performance (performance.ps1)"
    Write-Host "4) Retour"
    Write-Host ""

    $choice = Read-Host "Sélectionnez un outil"

    switch ($choice) {
        "1" { & "$sharedPath\cleanup.ps1"; Pause }
        "2" { & "$sharedPath\network.ps1"; Pause }
        "3" { & "$sharedPath\performance.ps1"; Pause }
        "4" { return }
        default {
            Write-Host "Choix invalide."
            Start-Sleep 1
        }
    }
}

# Boucle principale
while ($true) {
    Show-Menu
    $input = Read-Host "Choix"

    switch ($input) {
        "1" { Apply-Profile }
        "2" { Show-Tools }
        "3" { break }
        default {
            Write-Host "Choix invalide."
            Start-Sleep 1
        }
    }
}
