$passed = $true
if (Test-Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\RunOnceServices"){
    try {
        $value = Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\RunOnceServices" -Name "T1547001004" -ErrorAction SilentlyContinue
        if ($value.'T1547001004' -eq "C:\Windows\Temp\T1547001004.exe"){
            Write-Output "Hunt-T1547-Sub001-Test004: Registry value not removed"
            $passed = $false;
        }
    } 
    catch{
        Write-Output "HI"
    }
}
if (Test-Path "C:\Windows\Temp\T1547001004.exe"){
    Write-Output "Hunt-T1547-Sub001-Test004: File not removed"
    $passed = $false;
}
return $passed