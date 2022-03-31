$passed = $true
if (Test-Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders"){
    try {
        $value = Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" -Name "Common Startup" -ErrorAction SilentlyContinue
        if ($value.'Common Startup' -eq "C:\Windows\Temp\T1547001010"){
            Write-Output "Hunt-T1547-Sub001-Test010: Registry value not removed"
            $passed = $false;
        }
    } 
    catch{
        Write-Output "HI"
    }
}
return $passed