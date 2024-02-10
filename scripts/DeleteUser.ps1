Write-Host ""

net user

Write-Host "------------------------------------"
Write-Host ""

$loop = "y"

do{

    $name = Read-Host "Enter the username to delete"
    Write-Host ""

    if (Get-LocalUser -Name $name -ErrorAction SilentlyContinue) {

        Remove-LocalUser -Name $name
        Write-Host "User $name has been successfully deleted."

    } else {

        Write-Host "User $name not found. No changes were made."

    }

    Write-Output ""
    Write-Output "-------------------------------------"
    Write-Output ""

    do {

        $loop = Read-Host "Do you want to delete another user? (y/n)"
        
        if($loop -eq "y" -or $loop -eq "n"){
            break
        } else {
            Write-Output ""
            Write-Output "Introduce a correct value."
            Write-Output ""
        }

    } until($loop -eq "y" -or $loop -eq "n")

    Write-Output ""
    Write-Output "-------------------------------------"
    Write-Output ""

} until($loop -eq "n")
