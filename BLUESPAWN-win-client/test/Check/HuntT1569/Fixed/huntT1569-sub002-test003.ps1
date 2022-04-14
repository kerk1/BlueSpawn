$passed = $true
if (Test-Path "HKLM:\SYSTEM\CurrentControlSet\Services\1569002003\Parameters"){
    try {
        $value = Get-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\1569002003\Parameters" -Name "ServiceDll" -ErrorAction SilentlyContinue
        if ($value."ServiceDll" -eq "C:\Windows\Temp\T1569002003.dll"){
            Write-Output "Hunt-T1569-Sub002-Test003: Registry value not removed"
            $passed = $false;
        }
    } 
    catch{
        $passed = $true
    }
}
if (Test-Path "C:\Windows\Temp\T1569002003.dll"){
    Write-Output "Hunt-T1569-Sub002-Test003: File not removed"
    $passed = $false;
}
return $passed