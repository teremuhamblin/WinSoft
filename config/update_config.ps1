# ==========================================
# WinSoft - Update Config
# Version : 1.0
# Auteur  : The MadDoG.tmdg 
# ==========================================

param(
    [Parameter(Mandatory=$true)]
    [ValidateSet("common", "win10", "win11")]
    [string]$Target,

    [Parameter(Mandatory=$true)]
    [ValidateSet("add", "remove")]
    [string]$Action,

    [Parameter(Mandatory=$true)]
    [string]$AppName
)

$ConfigRoot = $PSScriptRoot

$fileMap = @{
    "common" = "apps-common.txt"
    "win10"  = "apps-win10.txt"
    "win11"  = "apps-win11.txt"
}

$filePath = Join-Path $ConfigRoot $fileMap[$Target]

if (-Not (Test-Path $filePath)) {
    Write-Host "❌ Fichier introuvable : $filePath"
    exit
}

$content = Get-Content $filePath

switch ($Action) {
    "add" {
        if ($content -contains $AppName) {
            Write-Host "ℹ L'application existe déjà dans $Target"
        } else {
            Add-Content -Path $filePath -Value $AppName
            Write-Host "✔ Ajouté : $AppName → $Target"
        }
    }

    "remove" {
        if ($content -contains $AppName) {
            $content | Where-Object { $_ -ne $AppName } | Set-Content $filePath
            Write-Host "✔ Supprimé : $AppName → $Target"
        } else {
            Write-Host "ℹ L'application n'est pas présente dans $Target"
        }
    }
}
