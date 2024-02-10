$loop = "y"

do{
    
    Write-Host ""
    $name = Read-Host "Introduce user name"
    Write-Host ""

    $pswd = Read-Host "Introduce password"
    $pswd_secure = ConvertTo-SecureString $pswd -AsPlainText -Force

    New-LocalUser $name -Password $pswd_secure -AccountNeverExpires -PasswordNeverExpires

    Write-Output ""
    Write-Output "-------------------------------------"
    Write-Output ""

    do {

        $loop = Read-Host "Do you want to create another user? (y/n)"
        
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
