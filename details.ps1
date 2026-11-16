Import-Module Active Directory

$username = "john.tan"

$user = Get-ADUser $username -Properties Enabled, MemberOf

Write-Host "Name: $($user.Name)"
Write-Host "Username: $($user.SamAccountName)"
Write-Host "Account Enabled: $($user.Enabled)"
