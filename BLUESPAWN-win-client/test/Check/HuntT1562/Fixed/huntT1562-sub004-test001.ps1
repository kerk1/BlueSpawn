$passed = $true
if (Test-Path "HKLM:\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\DomainProfile\AuthorizedApplications\List"){
    try {
        $value = Get-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\DomainProfile\AuthorizedApplications\List" -Name "C:\Windows\Temp\T1562004001.exe" -ErrorAction SilentlyContinue
        if ($value."C:\Windows\Temp\T1562004001.exe" -like "*"){
            Write-Output "Hunt-T1562-Sub004-Test001: Registry value not removed"
            $passed = $false;
        }
    } 
    catch{
        $passed = $true
    }
}
if (Test-Path "C:\Windows\Temp\T1562004001.exe"){
    Write-Output "Hunt-T1562-Sub004-Test001: File not removed"
    $passed = $false;
}
return $passed