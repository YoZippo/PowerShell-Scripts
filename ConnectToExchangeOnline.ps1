<#

.SYNOPSIS
Testing
  Connect to Exchange Online PowerShell

.NOTES

  Version:           1.0
  Author:            Adam Therres - CPSG
  Creation Date:     3/18/2022

  Change Log:
  v1.0 - 3/18/2022 - Initial version

#>

# Load Exchange Online PowerShell commands
Import-Module ExchangeOnlineManagement

# Get username for Exchange Online access
$365ConnectUser = Read-Host -Prompt "Enter Exchange Online username"

# Connect to Exchange Online Powershell
Connect-ExchangeOnline -UserPrincipalName $365ConnectUser