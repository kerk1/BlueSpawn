$passed = $true
if (Test-Path "HKLM:\SYSTEM\CurrentControlSet\Services\1569002001"){
    try {
        $value = Get-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\1569002001" -Name "ImagePath" -ErrorAction SilentlyContinue
        if ($value."ImagePath" -eq "C:\Windows\Temp\T1569002001.exe"){
            Write-Output "Hunt-T1569-Sub002-Test001: Registry value not removed"
            $passed = $false;
        }
    } 
    catch{
        $passed = $true
    }
}
if (Test-Path "C:\Windows\Temp\T1569002001.exe"){
    Write-Output "Hunt-T1569-Sub002-Test001: File not removed"
    $passed = $false;
}
return $passed