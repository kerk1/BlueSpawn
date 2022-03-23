$folders = Get-ChildItem -Path Check
$allPassed = $true
foreach ($folder in $folders){
    if ($folder.name.contains("SKIP")){
        continue
    }
    $fixedFolder = $folder.Fullname + "\Fixed"
    $checks = Get-ChildItem -Path $fixedFolder
    foreach ($check in $checks){
        if ($check.name.contains("SKIP")){
            continue
        }
	    $output = &$check.Fullname
        $msgs = $output -Split "`n" | Select-Object -SkipLast 1
        $passed = $output -Split "`n" | Select-Object -Last 1
        if($passed -eq "False"){
            $failMsg = $check.Fullname + "Failed!"
            Write-Output $failMsg
            Write-Output $msgs
            $allPassed = $false
        }
    }
}
return $allPassed