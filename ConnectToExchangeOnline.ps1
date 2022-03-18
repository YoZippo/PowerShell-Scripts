# Connect to Exchange Online so I don't have to remember the commands

# Load Exchange Online PowerShell commands
Import-Module ExchangeOnlineManagement

# Get username for Exchange Online access
$365ConnectUser = Read-Host -Prompt "Enter Exchange Online username"

# Connect to Exchange Online Powershell
Connect-ExchangeOnline -UserPrincipalName $365ConnectUser