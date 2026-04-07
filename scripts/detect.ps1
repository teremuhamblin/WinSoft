# ==========================================
# WinSoft - OS Detection Module
# Version : 1.0
# Auteur  : The MadDoG.tmdg 
# ==========================================

function Get-WindowsVersion {
    try {
        $productName = (Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion").ProductName

        if ($productName -match "Windows 11") {
            return "Win11"
        }
        elseif ($productName -match "Windows 10") {
            return "Win10"
        }
        else {
            return "Unknown"
        }
    }
    catch {
        return "Unknown"
    }
}
