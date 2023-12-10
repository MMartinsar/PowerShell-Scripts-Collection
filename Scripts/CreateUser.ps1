Write-Host ""

$name = Read-Host "Introduce user name"

Write-Host ""

$pswd = Read-Host "Introduce password"

$pswd_secure = ConvertTo-SecureString $pswd -AsPlainText -Force

New-LocalUser $name -Password $pswd_secure -AccountNeverExpires -PasswordNeverExpires