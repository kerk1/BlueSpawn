$folders = Get-ChildItem -Path Attack
foreach ($folder in $folders){
    $attacks = Get-ChildItem -Path $folder.Fullname
    foreach ($attack in $attacks){
	    &$attack.Fullname
    }
}