Import-Module Veeam.Backup.PowerShell -DisableNameChecking

$BackupJobs = Get-VBRJob | Sort-Object -Property Name
$LastSessionAllJobs = $BackupJobs.FindLastSession()
$MachineStatus = $LastSessionAllJobs | Get-VBRTaskSession
$Successes = $MachineStatus | Where-Object -Property "Status" -eq "Success"
$Warnings = $MachineStatus | Where-Object -Property "Status" -eq "Warning"
$Failures = $MachineStatus | Where-Object -Property "Status" -eq "Failed"

Write-Host -ForegroundColor Green "Success:" $Successes.Count
Write-Host -ForegroundColor Yellow "Warning:" $Warnings.Count
Write-Host -ForegroundColor Red "Failed:" $Failures.Count



$Failures.Info.Reason 
