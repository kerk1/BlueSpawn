$folders = Get-ChildItem -Path Clean
foreach ($folder in $folders){
    $cleanups = Get-ChildItem -Path $folder.Fullname
    foreach ($cleanup in $cleanups){
        &$cleanup.Fullname
    }
}