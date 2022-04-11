$passed = $true
if (Test-Path "HKLM:\System\CurrentControlSet\Control\LSA"){
    try {
        $value = Get-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\LSA" -Name "Security Packages" -ErrorAction SilentlyContinue
        if ($value.'Security Packages' -like "*T1547005001*"){
            Write-Output "Hunt-T1547-Sub005-Test001: Registry value not removed"
            $passed = $false;
        }
    } 
    catch{
        Write-Output "HI"
    }
}
if (Test-Path "C:\Windows\System32\T1547005001.dll"){
    Write-Output "Hunt-T1547-Sub005-Test001: File not removed"
    $passed = $false;
}
return $passed