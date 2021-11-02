# Delete all Files in C:\Windows\System32\LogFiles\HTTPERR older than 15 days
$Path = "C:\Windows\System32\LogFiles\HTTPERR"
$Daysback = "-15"
 
$CurrentDate = Get-Date
$DatetoDelete = $CurrentDate.AddDays($Daysback)
Get-ChildItem $Path | Where-Object { $_.LastWriteTime -lt $DatetoDelete } | Remove-Item