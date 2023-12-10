Write-Host ""
$name = Read-Host "Introduce the name of the directory"
Write-Host ""
$directory_path = Read-Host "Introduce complete path for the new directory"
Write-Host ""

New-Item -ItemType Directory $directory_path

$user_shared = Read-Host "Introduce the name of the user you want to share the directory with"
Write-Host ""
$permissions = Read-Host "What permissions you want to give the user?(FullAccess | ReadAccess)"
Write-Host ""

Switch($permissions){
    "FullAccess"{New-SmbShare -Path $directory_path -Name $name -FullAccess $user_shared}
    "ReadAccess"{New-SmbShare -Path $directory_path -Name $name -ReadAccess $user_shared}
}