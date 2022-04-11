$passed = $true
if (Test-Path "HKLM:\System\CurrentControlSet\Services\W32Time\TimeProviders\T1547003001"){
    try {
        $value = Get-ItemProperty -Path "HKLM:\System\CurrentControlSet\Services\W32Time\TimeProviders\T1547003001" -Name "DllName" -ErrorAction SilentlyContinue
        if ($value.'Dllname' -eq "C:\Windows\Temp\T1547003001.dll"){
            Write-Output "Hunt-T1547-Sub003-Test001: Registry value not removed"
            $passed = $false;
        }
    } 
    catch{
        Write-Output "HI"
    }
}
if (Test-Path "C:\Windows\Temp\T1547003001.dll"){
    Write-Output "Hunt-T1547-Sub003-Test001: File not removed"
    $passed = $false;
}
return $passed