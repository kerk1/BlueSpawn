$passed = $true
if (Test-Path "HKLM:\SOFTWARE\Microsoft\Cryptography\OID\EncodingType 0\CryptSIPDllIsMyFileType2\{000C10F1-0000-0000-C000-155300300346}"){
    try {
        $value = Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Cryptography\OID\EncodingType 0\CryptSIPDllIsMyFileType2\{000C10F1-0000-0000-C000-155300300346}" -Name "Dll" -ErrorAction SilentlyContinue
        if ($value.'Dll' -eq "C:\Windows\Temp\T1553003003.dll"){
            Write-Output "Hunt-T1553-Sub003-Test003: Dll Registry value not removed"
            $passed = $false;
        }        
        $value = Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Cryptography\OID\EncodingType 0\CryptSIPDllIsMyFileType2\{000C10F1-0000-0000-C000-155300300346}" -Name "FuncName" -ErrorAction SilentlyContinue
        if ($value.'FuncName' -eq "Evil"){
            Write-Output "Hunt-T1553-Sub003-Test003: FuncName Registry value not removed"
            $passed = $false;
        }
    } 
    catch{
        Write-Output "HI"
    }
}
if (Test-Path "C:\Windows\Temp\T1553003003.dll"){
    Write-Output "Hunt-T1553-Sub003-Test003: File not removed"
    $passed = $false;
}
return $passed