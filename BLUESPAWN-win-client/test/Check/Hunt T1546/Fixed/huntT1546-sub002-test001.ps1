$passed = $true
if (Test-Path "HKCU:\Control Panel\Desktop"){
    try {
        $value = Get-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "SCRNSAVE.exe" -ErrorAction SilentlyContinue
        if ($value.'SCRNSAVE.exe' -eq "C:\temp\evil.exe"){
            Write-Output "HuntT1546-Sub02-Test001: Registry value not removed"
            $passed = $false;
        }
    } 
    catch{
        Write-Output "HI"
    }
}
return $passed