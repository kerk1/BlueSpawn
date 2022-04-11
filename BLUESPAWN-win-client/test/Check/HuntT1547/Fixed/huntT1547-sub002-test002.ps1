$passed = $true
if (Test-Path "HKLM:\System\CurrentControlSet\Control\LsaExtensionConfig\T1547002002"){
    try {
        $value = Get-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\LsaExtensionConfig\T1547002002" -Name "Extensions" -ErrorAction SilentlyContinue
        if ($value.'Extensions' -like "*T1547002002.dll*"){
            Write-Output "Hunt-T1547-Sub002-Test002: Registry value not removed"
            $passed = $false;
        }
    } 
    catch{
        Write-Output "HI"
    }
}
if (Test-Path "C:\Windows\System32\T1547002002.dll"){
    Write-Output "Hunt-T1547-Sub002-Test002: File not removed"
    $passed = $false;
}
return $passed