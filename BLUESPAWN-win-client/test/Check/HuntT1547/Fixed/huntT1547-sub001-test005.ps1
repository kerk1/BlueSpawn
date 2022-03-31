$passed = $true
if (Test-Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\RunOnceEx"){
    try {
        $value = Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\RunOnceEx" -Name "T1547001005" -ErrorAction SilentlyContinue
        if ($value.'T1547001005' -eq "C:\Windows\Temp\T1547001005.exe"){
            Write-Output "Hunt-T1547-Sub001-Test005: Registry value not removed"
            $passed = $false;
        }
    } 
    catch{
        Write-Output "HI"
    }
}
if (Test-Path "C:\Windows\Temp\T1547001005.exe"){
    Write-Output "Hunt-T1547-Sub001-Test005: File not removed"
    $passed = $false;
}
return $passed