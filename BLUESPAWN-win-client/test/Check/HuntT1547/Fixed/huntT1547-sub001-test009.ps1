$passed = $true
if (Test-Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders"){
    try {
        $value = Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" -Name "Startup" -ErrorAction SilentlyContinue
        if ($value.'Startup' -eq "C:\Windows\Temp\T1547001009"){
            Write-Output "Hunt-T1547-Sub001-Test009: Registry value not removed"
            $passed = $false;
        }
    } 
    catch{
        Write-Output "HI"
    }
}
return $passed