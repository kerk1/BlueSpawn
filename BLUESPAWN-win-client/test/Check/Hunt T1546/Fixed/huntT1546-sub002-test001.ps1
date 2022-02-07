$passed = $true
if (Test-Path "HKCU:\Control Panel\Desktop"){
    try {
        $value = Get-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "SCRNSAVE.exe" -ErrorAction SilentlyContinue
        if ($value.ReportingMode -eq "C:\temp\evil.exe"){
            $passed = $false;
        }
    } 
    catch{
        Write-Output "HI"
    }
}
return $passed