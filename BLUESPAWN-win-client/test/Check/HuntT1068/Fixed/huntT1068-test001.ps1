$passed = $true
if (Test-Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Print\Printers\EvilPrinter"){
    try {
        $value = Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Print\Printers\EvilPrinter"  -Name "Port" -ErrorAction SilentlyContinue
        if ($value.'Port' -eq "C:\Windows\Temp\T1068001.dll"){
            Write-Output "Hunt-T1068-Test001: Registry value not removed"
            $passed = $false
        }
    } 
    catch{
        Write-Output "HI"
    }
}
if (Test-Path "C:\Windows\Temp\T1068001.dll"){
    Write-Output "Hunt-T1068-Test001: File not deleted"
    $passed = $false
}
return $passed