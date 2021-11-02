<#

.SYNOPSIS

  Delete all files older than 15 days in C:\inetpub\logs\LogFiles\W3SVC1

.NOTES

  Version:           2.0
  Author:            Adam Therres - CPSG
  Creation Date:     9/22/2021

  Change Log:
  v1.0 - 9/22/2021 - Initial version
  v2.0 - 11/2/2021 - Added logging

#>

# Start log
$dateForLog = Get-Date -Format "MM-dd-yyyy_HHmm"
Start-Transcript -Path "C:\Scripts\Logs\IIS_Log_Cleanup_$dateforlog.txt"

# Delete all files in C:\inetpub\logs\LogFiles\W3SVC1 older than 15 days

$inetpubLogPath = "C:\inetpub\logs\LogFiles\"
$daysBack = "-15"

$currentdate = Get-Date
$dateToDelete = $currentdate.AddDays($daysBack)
Get-ChildItem $inetpubLogPath -Recurse | Where-Object { $_.LastWriteTime -lt $dateToDelete } | Remove-Item

Stop-Transcript
