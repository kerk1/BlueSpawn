$passed = $true
if (Test-Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\WinLogon"){
    try {
        $value = Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows NT\CurrentVersion\WinLogon" -Name "Shell" -ErrorAction SilentlyContinue
        if ($value.'Shell' -eq "T1547004002.exe"){
            Write-Output "Hunt-T1547-Sub004-Test002: Registry value not removed"
            $passed = $false;
        }
    } 
    catch{
        Write-Output "HI"
    }
}
if (Test-Path "C:\Windows\System32\T1547004002.exe"){
    Write-Output "Hunt-T1547-Sub004-Test002: File not removed"
    $passed = $false;
}
return $passed