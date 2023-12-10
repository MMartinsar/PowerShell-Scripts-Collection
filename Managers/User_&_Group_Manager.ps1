Write-Output ""
Write-Output "-------------------------------------"
Write-Output ""
Write-Output "     º- User & Group Manager -º"
Write-Output ""
Write-Output "-------------------------------------"
Write-Output ""
Write-Output "By: MMartinsar - https://github.com/MMartinsar"
Write-Output ""
Write-Output ""
Write-Output ""

$run_global = "y"
$run_manage = "y"
$run = "y"

do {
    
    $manage = Read-Host "What do you want to manage? (Users | Groups | Help | Exit)"
    Write-Output ""

    if($manage -eq "Users"){

        $action = Read-Host "What action do you want to perform? (Examine | Create | Modify | Delete | Enable | Disable | Exit)"
        Write-Output ""

        if($action -eq "Create"){

            $name = Read-Host "Name"
            $password = Read-host "Password (leave blank for no password)"
            $password_encrptd = ConvertTo-SecureString $password -AsPlainText -Force
            Write-Output ""

            if($password -ne ""){

                New-LocalUser -Name $name -NoPassword

            } else {

                New-LocalUser -Name $name -Password $password_encrptd

            }

        } else {

            Write-Output "-------------------------------------"
            Write-Output ""
            Write-Output "ERROR - Introduce a valid value."
            Write-Output ""
            Write-Output "-------------------------------------"

        }

    }

    Write-Output ""

    do {

        $run_global = Read-Host "Do you want to manage something else? (y/n)"
       
        if($run_global -eq "y" -or $run_global -eq "n"){
            break
        } else {
            Write-Output "-------------------------------------"
            Write-Output ""
            Write-Output "ERROR - Introduce a valid value."
            Write-Output ""
            Write-Output "-------------------------------------"
        }


    } until($run_global -eq "y" -or $run_global -eq "n")

    Write-Output ""

} until ($run_global -eq "n")