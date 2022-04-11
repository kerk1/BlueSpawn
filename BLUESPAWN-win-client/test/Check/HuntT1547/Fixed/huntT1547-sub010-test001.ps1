$passed = $true
if (Test-Path "HKLM:\System\CurrentControlSet\Control\Print\Monitors\T1547010001"){
    try {
        $value = Get-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Print\Monitors\T1547010001" -Name "Driver" -ErrorAction SilentlyContinue
        if ($value.'Driver' -eq "T1547010001.dll"){
            Write-Output "Hunt-T1547-Sub010-Test001: Registry value not removed"
            $passed = $false;
        }
    } 
    catch{
        Write-Output "HI"
    }
}
if (Test-Path "C:\Windows\System32\T1547010001.dll"){
    Write-Output "Hunt-T1547-Sub010-Test001: File not removed"
    $passed = $false;
}
return $passed