.\RunAttacks.ps1
#Run BLUESPAWN args[0] is path to BLUESPAWN
$job = Start-Job -ScriptBlock {
    Write-Output "y`n"*1000000 | &$args[0] --hunt --log=console,xml -a Intensive --hunts T1546 --react remove-value,carve-memory,delete-file
} -ArgumentList $args[0]
Wait-Job $job -Timeout 5 | out-null
#Write-Output "y`n"*1000000 | C:\Users\WillMayes\Documents\Cybersecurity\BLUESPAWN\bin\BLUESPAWN-client-x64.exe --hunt --log=console,xml -a Intensive --hunts T1546 --react remove-value,carve-memory,delete-file
$fullyPassed = .\CheckFixed.ps1
.\CleanUp.ps1
return $fullyPassed