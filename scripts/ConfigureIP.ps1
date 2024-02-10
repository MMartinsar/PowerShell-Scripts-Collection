﻿Write-Output ""
Write-Output "------------------------------------"
Write-Output ""
Write-Output "       º- IP Configurator -º"
Write-Output ""
Write-Output "------------------------------------"
Write-Output ""
Write-Output "By: MMartinsar - https://github.com/MMartinsar"
Write-Output ""
Write-Output ""
Write-Output ""

Write-Output "Select the configuration you want to make by typing the number associated"
Write-Output ""
Write-Output "1 - Dynamic Ip Configuration"
Write-Output "2 - Static Ip Configuration"
Write-Output "3 - Exit"
Write-output ""
Write-Output "------------------------------------"
Write-output ""

do{

    $conf = Read-Host "Choose the configuration"
    
    if(($conf -ne "1") -or ($conf -ne "2") -or ($conf -ne "3")){

        Write-output ""
        Write-Output "Not a valid option!"
        Write-Output ""

    }

    if($conf -eq "1"){

        Write-Host ""
        Write-Host "Your interfaces:"
        netsh interface ipv4 show interface
        Write-Host ""
        $interface = Read-Host "Introduce the name of the interface you want to change"
        Write-Host ""

        Remove-NetIPAddress -InterfaceAlias $interface -Confirm:$false
        Remove-NetRoute -InterfaceAlias $interface -Confirm:$false

        Set-NetIPInterface -InterfaceAlias $interface -Dhcp Enabled
        Set-DnsClientAddress -InterfaceAlias $interface -ResetServerAddresses

        Restart-NetAdapter -Name $interface

        gip -InterfaceAlias $interface

    } elseif($conf -eq "2"){

        Write-Host ""
        Write-Host "Your interfaces:"
        netsh interface ipv4 show interface
        Write-Host ""
        $interface = Read-Host "Introduce the name of the interface you want to change"
        Write-Host ""

        Remove-NetIPAddress -InterfaceAlias $interface -Confirm:$false
        Remove-NetRoute -InterfaceAlias $interface -Confirm:$false
     
        Write-output ""
        $desired_ip = Read-Host "Introduce the desired static IP"
        Write-output ""
        $desired_mask = Read-Host "Introduce the desired mask in numbers (255.255.255.0 = 24)"
        Write-output ""
        $desired_gateway = Read-Host "Introduce the desired gateway"
        Write-Host ""

        New-NetIPAddress -InterfaceAlias $interface -IPAddress $desired_ip -PrefixLength $desired_mask -DefaultGateway $desired_gateway

        $dns_address1 = Read-Host "Introduce first desired dns"
        Write-Host ""
        $dns_address2 = Read-Host "Introduce second desired dns"
        Write-Host ""

        Set-DnsClientServerAddress -InterfaceAlias $interface -ServerAddresses ($dns_address1,$dns_address2)

        gip -InterfaceAlias $interface

    } elseif($conf -eq "3"){

        exit

    }

}while($true)