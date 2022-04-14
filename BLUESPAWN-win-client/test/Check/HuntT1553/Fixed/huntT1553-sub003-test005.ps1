$passed = $true
if (Test-Path "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Cryptography\Providers\Trust\Signature\{00AAC56B-CD44-11D0-8CC2-00C04FC295EE}"){
    try {
        $value = Get-ItemProperty -Path "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Cryptography\Providers\Trust\Signature\{00AAC56B-CD44-11D0-8CC2-00C04FC295EE}" -Name "`$Function" -ErrorAction SilentlyContinue
        if ($value.'$Function' -eq "Evil"){
            Write-Output "Hunt-T1553-Sub003-Test005: Registry value not removed"
            $passed = $false;
        }
    } 
    catch{
        Write-Output "HI"
    }
}
return $passed