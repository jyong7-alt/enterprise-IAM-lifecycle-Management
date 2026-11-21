Import-Module ActiveDirectory

$Username = Read-Host "Enter employee username"

$User = Get-ADUser -Identity $Username -Properties MemberOf

if ($null -eq $User) {
    Write-Host "Employee account not found!" -ForegroundColor Blue
    return

}


$User.MemberOf | Foreach-Object {
	Remove-ADGroupMember -Identity $_ -Members $Username -Confirm:$false
}

Get-ADUser -Identity $Username -Properties Enabled, MemberOf |
Select-Object Name, SamAccountName, Enabled, MemberOf

Write-Host "Offboarding completed!" -ForgroundColor Red


