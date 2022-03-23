$folders = Get-ChildItem -Path Attack
foreach ($folder in $folders){
    if ($folder.name.contains("SKIP")){
        continue
    }
    $attacks = Get-ChildItem -Path $folder.Fullname
    foreach ($attack in $attacks){
        if ($attack.name.contains("SKIP")){
            continue
        }
	    &$attack.Fullname
    }
}