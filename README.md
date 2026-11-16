Enterprise IAM lifecycle Managemetn

Project Overview

This project demonstrates a hands on Identity And Access Management environment using window server active directory and powershell.

Main idea of the project is to reproduce an entrpise user lifecycle management and demonstrate how does actually IT administrator manage employee identities, access provisioning, department treansder and account deprovisioning. 

Lab Environment

Virtualisation - Oracle VirtualBox
Operating System - Window Server
Server Name - IAM-DC01
Active Directory Domin - ad.dell.test
NetBios Domain - DELL
Directory Service - Active Directory Domain Services
DNS - Active DIrectory DNS
Automation - PowerShell

Active Directory Structure
ad.dell.test
- Dell User
  *John Tan
  *Sarah Lim

- Dell Groups
  *IT-Admin
  *HR Department
  *Finance Department

- Dell Computer
- Dell Service Accounts


IAM User lifecycle Management
1. Joiner
- Create new employee account
- Create department based security groups
- Verified group membership with PowerShell

2. Mover
- Simulated an employee  transfeering from Finance to HR.
- Removed previous department group membership.
- Assigned the new department group.
- Verified updated access permissions.

3. Leaver
- Disabled am employee account
- Removed department group memebership.
- Preserved the account for audit purposes.

PowerShell commands.

Verify employee details
- GetADUser john.tan -properties | MemberOf

Check security group members
- Get-ADGroupMember HR-Users

Skills Demonstrated
- Active Directory Administration
- Identity lifecycle Management
- User provisioning and Deprovisioning
- Role Based Access Control
- Security Group Management
- Organisational Unit MAnagement
- PowerShell Administration
- Access Verification And Auditing


 Project status

 Core Joiner, Mover and Leaver exercises completed in a windows server virtual lab.
 Further improvement plan
 - PowerShell automation for bulk user creation
 - Automated employeee onboarding and offboarding
 - Access Audit reporting
 - Group policy implementation

Disclaimer
This project is created for educational and profolio purpose in an isolated virtual lab. All employee and names and organisation details is frictional.








