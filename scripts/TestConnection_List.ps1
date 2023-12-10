Write-Host ""

$file_path = Read-Host "Introduce the path to the csv file containing the ips"
$file = Import-Csv -Path $file_path

Write-Host ""

foreach($i in $file){

    $response = Test-Connection $i.ip -Count 1 -quiet
    
    if($response -eq "True"){
        Write-Host $i.ip ": Connection established."
        Write-Host ""
    } else {
        Write-Host $i.ip ": Connection failed."
        Write-Host ""
    }

}