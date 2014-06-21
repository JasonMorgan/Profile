<<<<<<< HEAD
#OkNew-PSDrive -Name VMStore -PSProvider FileSystem -Root '\\VMWare-host\Shared Folders' | out-null
=======
#New-PSDrive -Name VMStore -PSProvider FileSystem -Root '\\VMWare-host\Shared Folders' | out-null
>>>>>>> origin/master
start-job -ScriptBlock {Update-Help -Force} | Out-Null
cd c:\git
function ql { $args }
function qs ([string]$Separator) { if ($Separator) {$OFS = $Separator} ; "$args" }
function mf {Param ($path) new-item -itemtype file -path $path -force}
<<<<<<< HEAD
#$host.ui.RawUI.WindowTitle = "Jason`'s Rocking PowerShell Console: $([Math]::Round((gps -id $PID).vm/1mb,2)) MB Memory used"
=======
$host.ui.RawUI.WindowTitle = "Jason`'s Rocking PowerShell Console: $([Math]::Round((gps -id $PID).WorkingSet/1mb,2)) MB Memory used"
>>>>>>> origin/master
function prompt { 
   # our theme
   $cdelim = [ConsoleColor]::DarkCyan 
   $chost = [ConsoleColor]::Green 
   $cloc = [ConsoleColor]::Cyan 

   write-host "$([char]0x0A7) " -n -f $cloc
   Write-Host "[$(get-location)]" -NoNewline
   Write-Host " - Yes Jason?" -ForegroundColor Cyan -NoNewline
   Write-Host " > " -NoNewline
   $host.ui.RawUI.WindowTitle = "Jason`'s Rocking PowerShell Console: $([Math]::Round((gps -id $PID).WorkingSet/1mb,2)) MB Memory used"
   return ' '
<<<<<<< HEAD
} 
=======
} 
$docs = "$env:USERPROFILE\Documents"
$Down = "$env:USERPROFILE\Downloads"
Function edit {Powershell_ise $args}
>>>>>>> origin/master
