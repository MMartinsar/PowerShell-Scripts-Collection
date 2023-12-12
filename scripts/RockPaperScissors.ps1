Write-Output ""
Write-Output "-------------------------------------"
Write-Output ""
Write-Output "    º- Rock, Paper, Scissors! -º"
Write-Output ""
Write-Output "-------------------------------------"
Write-Output ""
Write-Output "By: MMartinsar - https://github.com/MMartinsar"
Write-Output ""
Write-Output ""
Write-Output ""

$match = "y"

do {
    $machine = Get-Random -InputObject "Rock", "Paper", "Scissors"

    do {

        $player = Read-Host "Choose your weapon (Rock | Paper | Scissors | Exit)"
        Write-Output ""

        if($player -eq "Exit") {
            
            return

        } elseif($player -eq "Rock" -or $player -eq "Paper" -or $player -eq "Scissors") {
            
            break

        } else {

            Write-Output "Not a valid weapon, choose again!"
            Write-Output ""

        }

    } until($player -eq "Rock" -or $player -eq "Paper" -or $player -eq "Scissors")

    if($player -eq "Rock" -and $machine -eq "Rock") {
        Write-Output "You: $player - Machine: $machine"
        Write-Output ""
        Write-Output "                Draw"
    } elseif($player -eq "Rock" -and $machine -eq "Paper") {
        Write-Output "You: $player - Machine: $machine"
        Write-Output ""
        Write-Output "              You lost"
    } elseif($player -eq "Rock" -and $machine -eq "Scissors") {
        Write-Output "You: $player - Machine: $machine"
        Write-Output ""
        Write-Output "              You win!"
        Write-Output ""
        Write-Output "               .%%%."     
        Write-Output "               % 1 %"     
        Write-Output "               '%%%'"      
        Write-Output "                ( ("     
        Write-Output "                )  )"     
        Write-Output "               (   ("    
        Write-Output "                )'  )"     
        Write-Output "               (/ \/" 
    } elseif($player -eq "Paper" -and $machine -eq "Paper") {
        Write-Output "You: $player - Machine: $machine"
        Write-Output ""
        Write-Output "                Draw"
    } elseif($player -eq "Paper" -and $machine -eq "Scissors") {
        Write-Output "You: $player - Machine: $machine"
        Write-Output ""
        Write-Output "              You lost"
    } elseif($player -eq "Paper" -and $machine -eq "Rock") {
        Write-Output "You: $player - Machine: $machine"
        Write-Output ""
        Write-Output "              You win!"
        Write-Output ""
        Write-Output "               .%%%."     
        Write-Output "               % 1 %"     
        Write-Output "               '%%%'"      
        Write-Output "                ( ("     
        Write-Output "                )  )"     
        Write-Output "               (   ("    
        Write-Output "                )'  )"     
        Write-Output "               (/ \/" 
    } elseif($player -eq "Scissors" -and $machine -eq "Scissors") {
        Write-Output "You: $player - Machine: $machine"
        Write-Output ""
        Write-Output "                Draw"
    } elseif($player -eq "Scissors" -and $machine -eq "Rock") {
        Write-Output "You: $player - Machine: $machine"
        Write-Output ""
        Write-Output "              You lost"
    } elseif($player -eq "Scissors" -and $machine -eq "Paper") {
        Write-Output "You: $player - Machine: $machine"
        Write-Output ""
        Write-Output "              You win!"
        Write-Output ""
        Write-Output "               .%%%."     
        Write-Output "               % 1 %"     
        Write-Output "               '%%%'"      
        Write-Output "                ( ("     
        Write-Output "                )  )"     
        Write-Output "               (   ("    
        Write-Output "                )'  )"     
        Write-Output "               (/ \/" 
    }
    
    Write-Output ""
    Write-Output "-------------------------------------"
    Write-Output ""

    do {

        $match = Read-Host "Rematch? (y/n)"
        
        if($match -eq "y" -or $match -eq "n"){
            break
        } else {
            Write-Output ""
            Write-Output "Introduce a correct value."
            Write-Output ""
        }

    } until($match -eq "y" -or $match -eq "n")

    Write-Output ""
    Write-Output "-------------------------------------"
    Write-Output ""

} until($match -eq "n")