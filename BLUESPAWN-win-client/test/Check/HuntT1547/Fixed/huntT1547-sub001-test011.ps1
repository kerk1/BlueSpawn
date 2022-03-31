$passed = $true
if (Test-Path "REGISTRY::HKEY_CLASSES_ROOT\CLSID\{16d12736-7a9e-4765-bec6-f301d679caaa}"){
    Write-Output "Hunt-T1547-Sub001-Test011: Registry value not removed"
}
if (Test-Path "C:\Windows\System32\rover.dll"){
    Write-Output "Hunt-T1547-Sub001-Test011: File not removed"
    $passed = $false;
}
return $passed