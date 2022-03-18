<#

.SYNOPSIS

  Connect to Exchange Online and enable an account to use O365 message relay

.NOTES

  Version:           1.0
  Author:            Adam Therres - CPSG
  Creation Date:     3/18/2022

  Change Log:
  v1.0 - 3/18/2022 - Initial version

#>

# Load Exchange Online PowerShell commands
Clear-Host
Import-Module ExchangeOnlineManagement -DisableNameChecking

# Get username (email address) for Exchange Online access
$365ConnectUser = Read-Host -Prompt "Enter your email to access Exchange Online PowerShell"

# Get email address for SMTP Relay user
$SMTPRelayUser = Read-Host -Prompt "Enter SMTP relay user's email address"

# Connect to Exchange Online Powershell
Connect-ExchangeOnline -UserPrincipalName $365ConnectUser

# Set SMTP Relay User account to allow SMTP AUTH (SMTP Relay)
Set-CASMailbox $SMTPRelayUser -SmtpClientAuthenticationDisabled $false
Get-CASMailbox $SMTPRelayUser | Select-Object Name,SmtpClientAuthenticationDisabled