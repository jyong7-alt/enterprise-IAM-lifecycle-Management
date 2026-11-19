Import-Module ActiveDirectory


$FirstName = Read-Host "Enter first name"
$LastName = Read-Host "Enter last name"
$Username = "$($FirstName.ToLower()).$($LastName.ToLower())"

$ExistingUser = Get-ADUser -Filter "SamAccountName -eq '$Username'"

if ($ExistingUser) {
    Write-Host "ERROR: User already exists!" -ForegroundColor Red
    return
}


$Department = Read-Host "Enter department (HR or Finance)"

switch ($Department.ToUpper()) {
    "HR" {
        $Group = "GG-HR-Users"
    }
    "FINANCE" {
        $Group = "GG-Finance-Users"
    }
    default {
        Write-Host "Invalid department. Onboarding cancelled." -ForegroundColor Red
        return
    }
}


$Password = Read-Host "Enter initial password" -AsSecureString


New-ADUser `
    -Name "$FirstName $LastName" `
    -GivenName $FirstName `
    -Surname $LastName `
    -SamAccountName $Username `
    -UserPrincipalName "$Username@ad.dell.test" `
    -Path "OU=DELL-Users,DC=ad,DC=dell,DC=test" `
    -AccountPassword $Password `
    -Enabled $false


Add-ADGroupMember -Identity $Group -Members $Username

Enable-ADAccount -Identity $Username


Get-ADUser -Identity $Username -Properties Enabled, MemberOf |
    Select-Object Name, SamAccountName, Enabled, MemberOf

Write-Host "Onboarding completed successfully!" -ForegroundColor Blue
