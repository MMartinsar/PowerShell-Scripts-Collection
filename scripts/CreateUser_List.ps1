$path = Read-Host "Introduce csv file path"

$file = Import-Csv -Path $path

foreach($i in $file){
    
    $pswd = ConvertTo-SecureString $i.password -AsPlainText -Force
    New-LocalUser $i.user -Password $pswd -AccountNeverExpires -PasswordNeverExpires
    Add-LocalGroupMember -Group usuarios -Member $i.user

}