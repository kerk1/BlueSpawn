$passed = $true
if (Test-Path "HKLM:\Software\Microsoft\Command Processor"){
    try {
        $value = Get-ItemProperty -Path "HKLM:\Software\Microsoft\Command Processor" -Name "AutoRun" -ErrorAction SilentlyContinue
        if ($value.'AutoRun' -eq "C:\Windows\Temp\T1547001008.exe"){
            Write-Output "Hunt-T1547-Sub001-Test008: Registry value not removed"
            $passed = $false;
        }
    } 
    catch{
        Write-Output "HI"
    }
}
if (Test-Path "C:\Windows\Temp\T1547001008.exe"){
    Write-Output "Hunt-T1547-Sub001-Test008: File not removed"
    $passed = $false;
}
return $passed