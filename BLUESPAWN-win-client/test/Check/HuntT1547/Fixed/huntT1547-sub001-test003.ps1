$passed = $true
if (Test-Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\RunServices"){
    try {
        $value = Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\RunServices" -Name "T1547001003" -ErrorAction SilentlyContinue
        if ($value.'T1547001003' -eq "C:\Windows\Temp\T1547001003.exe"){
            Write-Output "Hunt-T1547-Sub001-Test003: Registry value not removed"
            $passed = $false;
        }
    } 
    catch{
        Write-Output "HI"
    }
}
if (Test-Path "C:\Windows\Temp\T1547001003.exe"){
    Write-Output "Hunt-T1547-Sub001-Test003: File not removed"
    $passed = $false;
}
return $passed