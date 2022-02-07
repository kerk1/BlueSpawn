$passed = $true
if (Test-Path "HKLM:\Software\Microsoft\NetSh"){
    try {
        $value = Get-ItemProperty -Path "HKLM:\Software\Microsoft\NetSh" -Name "evil" -ErrorAction SilentlyContinue
        if ($value.ReportingMode -eq "evil.dll"){
            $passed = $false;
        }
    } 
    catch{
        Write-Output "HI"
    }
}
if (Test-Path "C:\Windows\System32\evil.dll"){
    $passed = $false
}
return $passed