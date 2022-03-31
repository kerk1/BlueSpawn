$passed = $true
if (Test-Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\Run"){
    try {
        $value = Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\Run" -Name "T1547001007" -ErrorAction SilentlyContinue
        if ($value.'T1547001007' -eq "C:\Windows\Temp\T1547001007.exe"){
            Write-Output "Hunt-T1547-Sub001-Test007: Registry value not removed"
            $passed = $false;
        }
    } 
    catch{
        Write-Output "HI"
    }
}
if (Test-Path "C:\Windows\Temp\T1547001007.exe"){
    Write-Output "Hunt-T1547-Sub001-Test007: File not removed"
    $passed = $false;
}
return $passed