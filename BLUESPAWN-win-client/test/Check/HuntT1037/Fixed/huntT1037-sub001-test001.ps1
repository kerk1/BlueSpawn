$passed = $true
if (Test-Path "HKCU:\Environment"){
    try {
        $value = Get-ItemProperty -Path "HKCU:\Environment" -Name "UserInitMprLogonScript" -ErrorAction SilentlyContinue
        if ($value.'UserInitMprLogonScript' -eq "C:\Windows\Temp\T1037001001.dll"){
            Write-Output "Hunt-T1037-Sub001-Test001: Registry value not removed"
            $passed = $false;
        }
    } 
    catch{
        Write-Output "HI"
    }
}
if (Test-Path "C:\Windows\Temp\T1037001001.dll"){
    Write-Output "Hunt-T1037-Sub001-Test001: File not removed"
    $passed = $false;
}
return $passed