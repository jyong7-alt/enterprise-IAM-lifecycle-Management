Import-Module ActiveDirectory

$groups = @(
    "GG-HR-Users",
    "GG-Finance-Users",
    "GG-IT-Admins"
)

foreach ($group in $groups) {

    Write-Host "`n===== $group =====" -ForegroundColor Cyan

    Get-ADGroupMember -Identity $group |
        Select-Object Name, SamAccountName, ObjectClass
}
