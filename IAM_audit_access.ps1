Import-Module ActiveDirectory

$Users = Get-ADUser
	-SearchBase "OU=DELL-USERS,DC=ad,DC=dell,DC=test"
	-Filter *
	-Properties Enabled, MemberOf

foreach ($User in $Users) {

	Write-Host "n===================" -ForegroundColor Cyan
	
	Write-Host "Name: $($User.Name)"
	Write-Host "Username : $($User.SamAccountName)"
	Write-Host "Enabled : $($User.Enabled)"

	Write-Host "Groups:"
	
	if($User.MemberOf){
	   $User.MemberOf | ForEach-Object {
		(Get-ADGroup -Identity $_).Name
	
	   }
	}
	else {
	   Write-Host "No group membership"
	}

}

