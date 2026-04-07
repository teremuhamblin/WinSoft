# ==========================================
# WinSoft - Validate Config
# Version : 1.0
# Auteur  : The MadDoG.tmdg 
# ==========================================

$ConfigRoot = $PSScriptRoot

function Validate-ConfigFile {
    param([string]$FileName)

    $filePath = Join-Path $ConfigRoot $FileName

    Write-Host "Validation : $FileName"

    if (-Not (Test-Path $filePath)) {
        Write-Host "❌ Fichier manquant"
        return
    }

    $content = Get-Content $filePath | Where-Object { $_.Trim() -ne "" }

    if ($content.Count -eq 0) {
        Write-Host "⚠️ Fichier vide"
    }

    $duplicates = $content | Group-Object | Where-Object { $_.Count -gt 1 }

    if ($duplicates) {
        Write-Host "⚠️ Doublons détectés :"
        $duplicates | ForEach-Object { Write-Host " - $($_.Name)" }
    } else {
        Write-Host "✔ Aucun doublon"
    }
}

Validate-ConfigFile "apps-common.txt"
Validate-ConfigFile "apps-win10.txt"
Validate-ConfigFile "apps-win11.txt"
