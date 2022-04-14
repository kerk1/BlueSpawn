$passed = $true
if (Test-Path "HKLM:\SYSTEM\CurrentControlSet\Services\1569002002"){
    try {
        $value = Get-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\1569002002" -Name "ImagePath" -ErrorAction SilentlyContinue
        if ($value."ImagePath" -eq "C:\Windows\Temp\T1569002002.exe"){
            Write-Output "Hunt-T1569-Sub002-Test002: Registry value not removed"
            $passed = $false;
        }
    } 
    catch{
        $passed = $true
    }
}
if (Test-Path "C:\Windows\Temp\T1569002002.exe"){
    Write-Output "Hunt-T1569-Sub002-Test002: File not removed"
    $passed = $false;
}
return $passed