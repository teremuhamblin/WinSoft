# ==========================================
# WinSoft - Load Config
# Version : 1.0
# Auteur  : The MadDoG.tmdg 
# ==========================================

$ConfigRoot = $PSScriptRoot

function Load-ConfigFile {
    param([string]$FileName)

    $filePath = Join-Path $ConfigRoot $FileName

    if (-Not (Test-Path $filePath)) {
        Write-Host "[ERREUR] Fichier introuvable : $filePath"
        return @()
    }

    return Get-Content $filePath | Where-Object { $_.Trim() -ne "" }
}

return @{
    Common = Load-ConfigFile "apps-common.txt"
    Win10  = Load-ConfigFile "apps-win10.txt"
    Win11  = Load-ConfigFile "apps-win11.txt"
}
