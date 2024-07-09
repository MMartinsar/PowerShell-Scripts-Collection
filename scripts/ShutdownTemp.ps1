Write-Output ""
Write-Output "Choose a countdown time (Introduce the number of the option):"
Write-Output ""
Write-Output "-------------------------------------"
Write-Output ""
Write-Output "1 - 30 minutes"
Write-Output "2 - 1 hour"
Write-Output "3 - 1 hour & 30 minutes"
Write-Output "4 - 2 hours"
Write-Output "5 - 4 hours"
Write-Output "6 - 6 hours"
Write-Output "7 - Exit"
Write-Output ""
Write-Output "-------------------------------------"
Write-Output ""

do{

    $selection = Read-Host "Choose the countdown time (1-7)"
    
    if(($selection -ne "1") -or ($selection -ne "2") -or ($selection -ne "3") -or ($selection -ne "4") -or ($selection -ne "5") -or ($selection -ne "6") -or ($selection -ne "7")){

        Write-output ""
        Write-Output "Not a valid option!"
        Write-Output ""

    }

    if($selection -eq "1"){

        shutdown -s -t 1800
        exit

    } elseif($selection -eq "2"){

        shutdown -s -t 3600
        exit

    } elseif($selection -eq "3"){

        shutdown -s -t 5400
        exit

    } elseif($selection -eq "4"){

        shutdown -s -t 7200
        exit

    } elseif($selection -eq "5"){

        shutdown -s -t 14400
        exit

    } elseif($selection -eq "6"){

        shutdown -s -t 21600
        exit

    } elseif($selection -eq "7"){

        exit

    }

}while($true)