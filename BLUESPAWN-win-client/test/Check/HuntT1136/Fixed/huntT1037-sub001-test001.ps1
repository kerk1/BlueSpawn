$passed = $true
if (Test-Path "HKCU:\Environment"){
    try {
        $value = Get-ItemProperty -Path "HKCU:\Environment" -Name "UserInitMprLogonScript" -ErrorAction SilentlyContinue
        if ($value.'UserInitMPRLogonScript' -eq "C:\Windows\Temp\evil.dll"){
            Write-Output "Hunt-T1037-Sub001-Test001: Registry value not removed"
            $passed = $false;
        }
    } 
    catch{
        Write-Output "HI"
    }
}
return $passed