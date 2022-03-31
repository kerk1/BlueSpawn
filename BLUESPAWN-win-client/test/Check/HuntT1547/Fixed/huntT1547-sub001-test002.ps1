$passed = $true
if (Test-Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\RunOnce"){
    try {
        $value = Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\RunOnce" -Name "T1547001002" -ErrorAction SilentlyContinue
        if ($value.'T1547001002' -eq "C:\Windows\Temp\T1547001002.exe"){
            Write-Output "Hunt-T1547-Sub001-Test002: Registry value not removed"
            $passed = $false;
        }
    } 
    catch{
        Write-Output "HI"
    }
}
if (Test-Path "C:\Windows\Temp\T1547001002.exe"){
    Write-Output "Hunt-T1547-Sub001-Test002: File not removed"
    $passed = $false;
}
return $passed