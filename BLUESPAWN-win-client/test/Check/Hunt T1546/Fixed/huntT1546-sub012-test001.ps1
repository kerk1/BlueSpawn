$passed = $true
if (Test-Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SilentProcessExit\notepad.exe"){
    try {
        $value = Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SilentProcessExit\notepad.exe" -Name "ReportingMode" -ErrorAction SilentlyContinue
        if ($value.ReportingMode -eq 1){
            $passed = $false;
        }
        $value = Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SilentProcessExit\notepad.exe" -Name "MonitorProcess" -ErrorAction SilentlyContinue
        if ($value.ReportingMode -eq "C:\temp\evil.exe"){
            $passed = $false;
        }
    } 
    catch{
        Write-Output "HI"
    }
}
return $passed