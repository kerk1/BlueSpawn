$folders = Get-ChildItem -Path Check
foreach ($folder in $folders){
    $fixedFolder = $folder.Fullname + "\Fixed"
    $checks = Get-ChildItem -Path $fixedFolder
    foreach ($check in $checks){
	    $passed = &$check.Fullname
        if(!$passed){
            return $false
        }
    }
}
return $true