# WinSoft - shared/performance.ps1
# Analyse des performances système

Write-Host "[PERF] Analyse des performances..." -ForegroundColor Cyan

# CPU
$cpu = Get-CimInstance Win32_Processor | Select-Object -ExpandProperty LoadPercentage
Write-Host "Charge CPU : $cpu%"

# RAM
$mem = Get-CimInstance Win32_OperatingSystem
$used = [math]::Round(($mem.TotalVisibleMemorySize - $mem.FreePhysicalMemory) / 1MB, 2)
$total = [math]::Round($mem.TotalVisibleMemorySize / 1MB, 2)
Write-Host "RAM utilisée : $used GB / $total GB"

# Disques
Write-Host "`nStockage :"
Get-PSDrive -PSProvider FileSystem |
    Select-Object Name, Used, Free |
    Format-Table -AutoSize

# Processus les plus gourmands
Write-Host "`nTop processus (CPU) :"
Get-Process |
    Sort-Object CPU -Descending |
    Select-Object -First 5 Name, CPU |
    Format-Table -AutoSize
