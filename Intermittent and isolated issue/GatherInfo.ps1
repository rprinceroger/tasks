# Get motherboard information
$motherboardInfo = Get-WmiObject Win32_Baseboard | Select-Object Product, Manufacturer, Version

# Get processor information
$processorInfo = Get-WmiObject Win32_Processor | Select-Object Caption, DeviceID, Name, NumberOfCores

# Get installed physical memory (RAM)
$memoryInfo = Get-WmiObject Win32_PhysicalMemory | Measure-Object Capacity | Select-Object Count, @{Name='Capacity'; Expression={($_.Count * 1GB)}}

# Get active VPN connection information
$vpnInfo = Get-VpnConnection

# Get RAM consumption
$ramInfo = Get-CimInstance Win32_OperatingSystem | Select-Object TotalVisibleMemorySize, FreePhysicalMemory

# Get the number of instances for supported browsers
$chromeInstances = (Get-Process -Name "chrome" -ErrorAction SilentlyContinue).Count
$firefoxInstances = (Get-Process -Name "firefox" -ErrorAction SilentlyContinue).Count
$edgeInstances = (Get-Process -Name "msedge" -ErrorAction SilentlyContinue).Count
$safariInstances = (Get-Process -Name "Safari" -ErrorAction SilentlyContinue).Count

# Display the results
Write-Host "Motherboard Information:"
$motherboardInfo | Format-Table -AutoSize

Write-Host "`nProcessor Information:"
$processorInfo | Format-Table -AutoSize

Write-Host "`nInstalled Physical Memory (RAM):"
$memoryInfo | Format-Table -AutoSize

Write-Host "`nActive VPN Connection Information:"
$vpnInfo | Format-Table -AutoSize

Write-Host "`nRAM Consumption:"
$ramInfo | Format-Table -AutoSize

Write-Host "`nNumber of Instances for Browsers:"
Write-Host "Google Chrome - Number of Instances: $chromeInstances"
Write-Host "Mozilla Firefox - Number of Instances: $firefoxInstances"
Write-Host "Microsoft Edge - Number of Instances: $edgeInstances"
Write-Host "Safari - Number of Instances: $safariInstances"

# Get RAM consumption
$ramInfo = Get-CimInstance Win32_OperatingSystem | Select-Object TotalVisibleMemorySize, FreePhysicalMemory

# Calculate the percentage of free physical memory
$percentageFreeMemory = ($ramInfo.FreePhysicalMemory / $ramInfo.TotalVisibleMemorySize) * 100

# Display the results
Write-Host "`nRAM Consumption:"
Write-Host "Total Visible Memory Size: $($ramInfo.TotalVisibleMemorySize) bytes"
Write-Host "Free Physical Memory: $($ramInfo.FreePhysicalMemory) bytes"
Write-Host "Percentage of Free Physical Memory: $percentageFreeMemory%"
