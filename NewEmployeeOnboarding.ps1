New-ADUser
-Name "$FirstName $lastName"
-GivenName $FirstName
-Surname $LastName
-SamAccountName $Username
-UserPrincipalName "$Username@ad.dell.test"
-Path 'OU=DELL-USERS,DC=ad,DC=dell, DC=test'
-AccountPassword $Password
-Enabled $False

Add-ADGroupMember -Identity $Group -members $Username
Enable-ADAccount -Identity $Username
Get-ADUser -Identity $Username -Properties Enabled, Member Of | Select Object Name, SamAccountName, Enabled, MemberOf

Write-Host "Onboarding completed" -ForegroundColor Blue

