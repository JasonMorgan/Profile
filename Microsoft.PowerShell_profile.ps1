#New-PSDrive -Name Z -PSProvider FileSystem -Root '\\VMWare-host\Shared Folders' | out-null
Set-Item -Path Env:HOME -Value $HOME
start-job -ScriptBlock {Update-Help -Force} | Out-Null
C:\Users\jmorg_000\AppData\Local\GitHub\shell.ps1
cd c:\git
function ql { $args }
function qs ([string]$Separator) { if ($Separator) {$OFS = $Separator} ; "$args" }
function mf {Param ($path) new-item -itemtype file -path $path -force}
$host.ui.RawUI.WindowTitle = "Jason`'s Rocking PowerShell Console: $([Math]::Round((gps -id $PID).WorkingSet/1mb,2)) MB Memory used"
Import-Module c:\git\posh-git
Import-Module PSReadline
function prompt {
   Write-Host "[$(get-location)]" -NoNewline
   Write-VcsStatus
   Write-Host " - Yes Jason?" -ForegroundColor Magenta -NoNewline
   Write-Host " > " -NoNewline
   $host.ui.RawUI.WindowTitle = "Jason`'s Rocking PowerShell Console: $([Math]::Round((gps -id $PID).WorkingSet/1mb,2)) MB Memory used"
   return ' '
} 
Enable-GitColors
Start-SshAgent -Quiet