$passed = $true
if (Test-Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Run"){
    try {
        $value = Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Run" -Name "T1547001001" -ErrorAction SilentlyContinue
        if ($value.'T1547001001' -eq "C:\Windows\Temp\T1547001001.exe"){
            Write-Output "Hunt-T1547-Sub001-Test001: Registry value not removed"
            $passed = $false;
        }
    } 
    catch{
        Write-Output "HI"
    }
}
if (Test-Path "C:\Windows\Temp\T1547001001.exe"){
    Write-Output "Hunt-T1547-Sub001-Test001: File not removed"
    $passed = $false;
}
return $passed