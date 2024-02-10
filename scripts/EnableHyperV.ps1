try{
    Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
    Write-Host "Hyper-V enabled succesfully"
} catch {
    Write-Host "Hyper-V already enabled"
}

Read-Host "Press ENTER to exit"

