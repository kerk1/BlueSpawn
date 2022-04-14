$passed = $true
if (Test-Path "HKLM:\SOFTWARE\Microsoft\Cryptography\OID\EncodingType 0\CryptSIPDllIsMyFileType2\{000C10F1-0000-0000-C000-000000000046}"){
    try {
        $value = Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Cryptography\OID\EncodingType 0\CryptSIPDllIsMyFileType2\{000C10F1-0000-0000-C000-000000000046}" -Name "FuncName" -ErrorAction SilentlyContinue
        if ($value.'FuncName' -eq "Evil"){
            Write-Output "Hunt-T1553-Sub003-Test002: Registry value not removed"
            $passed = $false;
        }
    } 
    catch{
        Write-Output "HI"
    }
}
return $passed