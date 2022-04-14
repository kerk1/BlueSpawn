$passed = $true
if (Test-Path "HKLM:\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PublicProfile\GloballyOpenPorts\List"){
    try {
        $value = Get-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\PublicProfile\GloballyOpenPorts\List" -Name "1562" -ErrorAction SilentlyContinue
        if ($value."1562" -like "*"){
            Write-Output "Hunt-T1562-Sub004-Test001: Registry value not removed"
            $passed = $false;
        }
    } 
    catch{
        $passed = $true
    }
}
return $passed