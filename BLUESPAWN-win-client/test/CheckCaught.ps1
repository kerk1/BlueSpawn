function TestMatch($detection, $matchDetection){
    #Check Type Matches
    $dType = $detection.'type'
    $mType = $matchDetection.'type'
    if ($dType -ne $mType){ 
        return $false
    }
    #Check Hunt Matches
    if ($matchDetection.'hunt' -ne "*"){
        $hunts = $detection.'associated-hunts'
        $matches = $false
        foreach ($hunt in $hunts){
            if ($hunt -eq $matchDetection.'hunt'){
                $matches = $true
                break
            }
        }
        if ($matches -eq $false){
            return $false
        }
    }
    $assocData = $detection.'associated-data'
    #Check Appropriate logs for type
    if ($matchDetection.'type' -eq "Registry"){
        if ($matchDetection.'Key Path' -ne "*" -band $matchDetection.'Key Path' -ne $assocData.'Key Path'){
            return $false
        }
        if ($matchDetection.'Key Value Name' -ne "*" -band $matchDetection.'Key Value Name' -ne $assocData.'Key Value Name'){
            return $false
        }
        if ($matchDetection.'Key Value Data' -ne "*" -band $matchDetection.'Key Value Data' -ne $assocData.'Key Value Data'){
            return $false
        }
        if ($matchDetection.'Registry Entry Type' -ne "*" -band $matchDetection.'Registry Entry Type' -ne $assocData.'Registry Entry Type'){
            return $false
        }
    }
    elseif ($matchDetection.'type' -eq "File"){
        if ($matchDetection.'Name' -ne "*" -band $matchDetection.'Name' -ne $assocData.'Name'){
            return $false
        }
        if ($matchDetection.'Malicious Yara Rules' -ne "*" -band $matchDetection.'Malicious Yara Rules' -ne $assocData.'Malicious Yara Rules'){
            return $false
        }
    }
    elseif ($matchDetection.'type' -eq "User"){
        if ($matchDetection.'Context' -ne "*" -band $matchDetection.'Context' -ne $assocData.'Context'){
            return $false
        }
        if ($matchDetection.'Username' -ne "*" -band $matchDetection.'Username' -ne $assocData.'Username'){
            return $false
        }
    }
    return $true
}

$files = Get-ChildItem -Path .\ -Filter *.json
$logs = Get-Content $files.name | ConvertFrom-Json
$detections = $logs.'bluespawn'.'detections'
$testDetections = @()
$testNames = @()
$testPassed = @()
$folders = Get-ChildItem -Path Check
foreach ($folder in $folders){
    if ($folder.name.contains("SKIP")){
        continue
    }
    $caughtFolder = $folder.Fullname + "\Caught"
    $checks = Get-ChildItem -Path $caughtFolder
    foreach ($check in $checks){
        if ($check.name.contains("SKIP")){
            continue
        }
        $checkLog = Get-Content $check.Fullname | ConvertFrom-Json
        $checkDetections = $checkLog.'detections'
        foreach ($detection in $checkDetections){
            $testDetections += $detection
            $testPassed += $false
        }
    }
}

foreach ($detection in $detections){
    for ($i=0; $i -lt $testDetections.Length; $i++){
        if (TestMatch -detection $detection -matchDetection $testDetections[$i]){
            $testPassed[$i] = $true;
        }
        #$c = TestMatch -detection $detection -matchDetection $testDetections[$i]
        #$c
    }
}
$allPassed = $true
for ($i=0; $i -lt $testDetections.Length; $i++){
    if ($testPassed[$i]){
        Write-Output $testDetections[$i].'Pass Message'
    }
    else {
        Write-Output $testDetections[$i].'Fail Message'
        $allPassed = $false
    } 
}
return $allPassed