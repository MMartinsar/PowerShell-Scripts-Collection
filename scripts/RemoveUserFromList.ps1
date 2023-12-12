$path = Read-Host "Introduce csv file path"

$file = Import-Csv -Path $path

foreach($i in $file){
    
    Remove-LocalUser $i.user

}