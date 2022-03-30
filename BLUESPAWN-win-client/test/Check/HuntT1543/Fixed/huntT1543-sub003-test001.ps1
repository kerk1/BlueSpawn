$passed = $true
if (Test-Path "HKLM:\System\CurrentControlSet\Services\DNS\Parameters"){
    try {
        $value = Get-ItemProperty -Path "HKLM:\System\CurrentControlSet\Services\DNS\Parameters" -Name "ServerLevelPluginDll" -ErrorAction SilentlyContinue
        if ($value.'ServerLevelPluginDll' -eq "C:\Windows\Temp\T1543003001.dll"){
            Write-Output "Hunt-T1543-Sub003-Test001: Registry value not removed"
            $passed = $false;
        }
    } 
    catch{
        Write-Output "HI"
    }
}
if (Test-Path "C:\Windows\Temp\T1543003001.dll"){
    Write-Output "Hunt-T1543-Sub003-Test001: File not removed"
    $passed = $false;
}
return $passed