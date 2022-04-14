$passed = $true
if (Test-Path "HKLM:\SOFTWARE\Microsoft\Cryptography\OID\EncodingType 0\CryptSIPDllIsMyFileType2\{000C10F1-0000-0000-C000-000000000046}"){
    try {
        $value = Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Cryptography\OID\EncodingType 0\CryptSIPDllIsMyFileType2\{000C10F1-0000-0000-C000-000000000046}" -Name "Dll" -ErrorAction SilentlyContinue
        if ($value.'Dll' -eq "C:\Windows\Temp\T1553003001.dll"){
            Write-Output "Hunt-T1553-Sub003-Test001: Registry value not removed"
            $passed = $false;
        }
    } 
    catch{
        Write-Output "HI"
    }
}
if (Test-Path "C:\Windows\Temp\T1553003001.dll"){
    Write-Output "Hunt-T1553-Sub003-Test001: File not removed"
    $passed = $false;
}
return $passed