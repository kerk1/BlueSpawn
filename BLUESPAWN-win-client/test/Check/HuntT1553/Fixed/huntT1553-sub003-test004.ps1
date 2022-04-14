$passed = $true
if (Test-Path "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Cryptography\Providers\Trust\Signature\{00AAC56B-CD44-11D0-8CC2-00C04FC295EE}"){
    try {
        $value = Get-ItemProperty -Path "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Cryptography\Providers\Trust\Signature\{00AAC56B-CD44-11D0-8CC2-00C04FC295EE}" -Name "`$DLL" -ErrorAction SilentlyContinue
        if ($value.'$DLL' -eq "C:\Windows\Temp\T1553003004.dll"){
            Write-Output "Hunt-T1553-Sub003-Test004: Registry value not removed"
            $passed = $false;
        }
    } 
    catch{
        Write-Output "HI"
    }
}
if (Test-Path "C:\Windows\Temp\T1553003004.dll"){
    Write-Output "Hunt-T1553-Sub003-Test004: File not removed"
    $passed = $false;
}
return $passed