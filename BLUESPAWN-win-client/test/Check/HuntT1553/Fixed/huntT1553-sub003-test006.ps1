$passed = $true
if (Test-Path "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Cryptography\Providers\Trust\Signature\{000C10F1-0000-0000-C000-155300300646}"){
    try {
        $value = Get-ItemProperty -Path "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Cryptography\Providers\Trust\Signature\{000C10F1-0000-0000-C000-155300300646}" -Name "`$DLL" -ErrorAction SilentlyContinue
        if ($value.'$DLL' -eq "C:\Windows\Temp\T1553003006.dll"){
            Write-Output "Hunt-T1553-Sub003-Test006: Dll Registry value not removed"
            $passed = $false;
        }        
        $value = Get-ItemProperty -Path "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Cryptography\Providers\Trust\Signature\{000C10F1-0000-0000-C000-155300300646}" -Name "`$Function" -ErrorAction SilentlyContinue
        if ($value.'$Function' -eq "Evil"){
            Write-Output "Hunt-T1553-Sub003-Test006: FuncName Registry value not removed"
            $passed = $false;
        }
    } 
    catch{
        Write-Output "HI"
    }
}
if (Test-Path "C:\Windows\Temp\T1553003006.dll"){
    Write-Output "Hunt-T1553-Sub003-Test006: File not removed"
    $passed = $false;
}
return $passed