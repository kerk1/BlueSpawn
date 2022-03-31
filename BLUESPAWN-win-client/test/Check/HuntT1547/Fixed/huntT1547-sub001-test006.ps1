$passed = $true
if (Test-Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\RunOnceServicesEx"){
    try {
        $value = Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\RunOnceServicesEx" -Name "T1547001006" -ErrorAction SilentlyContinue
        if ($value.'T1547001006' -eq "C:\Windows\Temp\T1547001006.exe"){
            Write-Output "Hunt-T1547-Sub001-Test006: Registry value not removed"
            $passed = $false;
        }
    } 
    catch{
        Write-Output "HI"
    }
}
if (Test-Path "C:\Windows\Temp\T1547001006.exe"){
    Write-Output "Hunt-T1547-Sub001-Test006: File not removed"
    $passed = $false;
}
return $passed