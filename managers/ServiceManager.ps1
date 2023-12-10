Write-Output ""
Write-Output "-------------------------------------"
Write-Output ""
Write-Output "        º- Service Manager -º"
Write-Output ""
Write-Output "-------------------------------------"
Write-Output ""
Write-Output "By: MMartinsar - https://github.com/MMartinsar"
Write-Output ""
Write-Output ""
Write-Output ""

$run_global = "y"
$run = "y"

do {

    $manage = Read-Host "What do you want to manage? (Status | Startup | Details | Help | Exit)"
    Write-Output ""

    if($manage -eq "Status") {

        while ($run -eq "y") {

            $serviceName = Read-Host "Which service you want to manage"
            $service = Get-Service -Name $serviceName
    
            Write-Output ""
            Write-Output "Possible actions: Start | Stop | Resume | Suspend | Restart | Remove"
            Write-Output ""
    
            $manage_status = Read-Host "What action do you want to perform"
            $desired_status = ""

            switch($manage_status) {
                "Stop" {$desired_status = "Stopped"}
                "Start" {$desired_status = "Running"}
                "Suspend" {$desired_status = "Suspended"}
                default {$desired_status = "NA"} 
            }

            Write-Output ""
            Write-Output "-------------------------------------"
            Write-Output ""

            if($desired_status -eq "NA"){
                Write-Output "Not a valid action."
            } elseif($service.status -eq $desired_status) {
                Write-Output "Service already $desired_status."
            } else {
                switch($manage_status){
                    "Stop" {net stop $service /yes}
                    "Start" {Start-Service $service -PassThru }
                    "Resume" {Resume-Service $service -PassThru}
                    "Suspend" {Suspend-Service $service -PassThru}
                    "Restart" {Restart-Service $service -PassThru}
                    "Remove" {Remove-Service $service -PassThru}
                    default {break}
                }
            }

            Write-Output ""
            Write-Output "-------------------------------------"
            Write-Output ""

            do {
                $run = Read-Host "Do you want to continue? (y/n)"
                
                if($run -eq "y" -or $run -eq "n"){
                    break
                } else {
                    Write-Output "-------------------------------------"
                    Write-Output ""
                    Write-Output "ERROR - Introduce a valid value."
                    Write-Output ""
                    Write-Output "-------------------------------------"
                }

            } until($run -eq "y" -or $run -eq "n")
            
            Write-Output ""

        }

        $run = "y"

    } elseif($manage -eq "Startup") {
    
        while ($run -eq "y") {

            $serviceName = Read-Host "Which service you want to manage"
            $service = Get-Service -Name $serviceName
    
            Write-Output ""
            Write-Output "Possible startup options: Automatic | Boot | Disabled | Manual | System"
            Write-Output ""

            $manage_startup = Read-Host "What action do you want to perform"

            Write-Output ""
            Write-Output "-------------------------------------"
            Write-Output ""

            if($manage_startup -eq $service.StartType){
                Write-Output "Service startup type is already $manage_startup"
            } else {
                Set-Service -Name $serviceName -StartupType $manage_startup -PassThru
            }

            Write-Output ""
            Write-Output "-------------------------------------"
            Write-Output ""

            do {
                $run = Read-Host "Do you want to continue? (y/n)"
                
                if($run -eq "y" -or $run -eq "n"){
                    break
                } else {
                    Write-Output "-------------------------------------"
                    Write-Output ""
                    Write-Output "ERROR - Introduce a valid value."
                    Write-Output ""
                    Write-Output "-------------------------------------"
                }

            } until($run -eq "y" -or $run -eq "n")
    
            Write-Output ""

        }

        $run = "y"

    } elseif($manage -eq "Details") {

        while ($run -eq "y") {

            $serviceName = Read-Host "Which service you want to manage"
    
            Write-Output ""
            Write-Output "Possible service customization changes: Name | Description."
            Write-Output ""
    
            $manage_details = Read-Host "What action do you want to perform"
            Write-Output ""

            if($manage_details -eq "Name" -or $manage_details -eq "Description") {
            
                $desired_details = Read-Host "What information do you want to introduce"

                Write-Output "-------------------------------------"
                Write-Output ""

                switch($manage_details) {
                    "Name" {Set-Service -Name $serviceName -DisplayName $desired_details -PassThru}
                    "Description" {Set-Service -Name $serviceName -Description $desired_details -PassThru}
                }

                Write-Output ""
                Write-Output "-------------------------------------"
                Write-Output ""
               
            } else {

                Write-Output "-------------------------------------"
                Write-Output ""
                Write-Output "ERROR - Not a valid action."
                Write-Output ""
                Write-Output "-------------------------------------"
                Write-Output ""
            }

            do {
                $run = Read-Host "Do you want to continue? (y/n)"
                
                if($run -eq "y" -or $run -eq "n"){
                    break
                } else {
                    Write-Output "-------------------------------------"
                    Write-Output ""
                    Write-Output "ERROR - Introduce a valid value."
                    Write-Output ""
                    Write-Output "-------------------------------------"
                }

             } until($run -eq "y" -or $run -eq "n")
    
            Write-Output ""
        
        }

        $run = "y"

    } elseif($manage -eq "Help") {
    
        Write-Output "-------------------------------------"
        Write-Output ""
        Write-Output "Service List:"
        Write-Output "-------------------------------------"

        Get-Service

        Write-Output ""
        Write-Output "-------------------------------------"
        Write-Output ""
        Write-Output "    ^ - Service list upwards - ^"
        Write-Output ""
        Write-Output ""
        Write-Output "Different configuration options:"
        Write-Output ""
        Write-Output "Status - Configures the status of the service."
        Write-Output "Startup - Configures the startup type of the service."
        Write-Output "Details - Configures the details of the services, as name and description."
        Write-Output "Help - If you are reading this, you don't need any explanation about this option."
        Write-Output "Exit - Exits the script."
        Write-Output ""
        Write-Output "-------------------------------------"
        Write-Output ""

    } elseif($manage -eq "Exit") {
    
        return

    } else {

        Write-Output "-------------------------------------"
        Write-Output ""
        Write-Output "ERROR - Introduce a valid value."
        Write-Output ""
        Write-Output "-------------------------------------"

    }

    Write-Output ""

    do {

        $run_global = Read-Host "Do you want to perform other actions? (y/n)"
        
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