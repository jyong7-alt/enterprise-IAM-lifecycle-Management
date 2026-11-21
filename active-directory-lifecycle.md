Active directory user lifecycle

Project overview
This project objective to demonstrate an Identity and Access Management environment using Microsoft Window Server Active Directory.
On top of this, added employee onboarding, department transfer, employee offboarding and user access auditing with automation script.

Lab Environment
Virtualization -- Oracle VirtualBox
Server -- Window Server
Domain Controller -- IAM-DC01
AD Domain -- ad.dell.test
NetBios Domain -- DELL
Automation -- PowerShell


AD Structure
OU
- DELL-USER
- DELL-Group
- DELL-Computer
- DELL-Service Account

Security Group
- IT-Admin
- HR
- Finance

IAM lifecycle Scenario

Joiner
-Create new employee account using PowerShell and assigned department and security group membership.

Mover
- Simulated and employee transfer by updating department group membership.

Leaver
- Disabled employee account and removed department group memberships while retaining further for audit purpose.

Skills demonstrated
- Active Directory administration
- Organizational Unit management
- security Group management
- user provisioning and deprovisioning
- Joiner, mover and leaver
- PowerShell automation
- IAM access auditing

















