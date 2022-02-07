.\RunAttacks.ps1
#Run BLUESPAWN args[0] is path to BLUESPAWN
$yes = "y`n"*1000
$job = Start-Job -ScriptBlock {
    &$args[0] --hunt --log=console,json -a Intensive --hunts T1546 -r "remove-value,delete-file"
} -ArgumentList $args[0] -InputObject $yes
Wait-Job $job -Timeout 15
Receive-Job $job
Stop-Job $job
#$yes | C:\Users\Admin\Downloads\BLUESPAWN-client-x64.exe --hunt --log=console,xml -a Intensive --hunts T1546 --react remove-value,carve-memory,delete-file
$fullyPassed = .\CheckFixed.ps1
.\CleanUp.ps1
return $fullyPassed