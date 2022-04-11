$passed = $true
if (Test-Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\WinLogon"){
    try {
        $value = Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\WinLogon" -Name "UserInit" -ErrorAction SilentlyContinue
        if ($value.'UserInit' -eq "C:\Windows\Temp\T1547004001.exe"){
            Write-Output "Hunt-T1547-Sub004-Test001: Registry value not removed"
            $passed = $false;
        }
    } 
    catch{
        Write-Output "HI"
    }
}
if (Test-Path "C:\Windows\Temp\T1547004001.exe"){
    Write-Output "Hunt-T1547-Sub004-Test001: File not removed"
    $passed = $false;
}
return $passed