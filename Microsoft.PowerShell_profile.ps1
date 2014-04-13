New-PSDrive -Name VMStore -PSProvider FileSystem -Root '\\VMWare-host\Shared Folders' | out-null
start-job -ScriptBlock {Update-Help -Force} | Out-Null
cd c:\git
function ql { $args }
function qs ([string]$Separator) { if ($Separator) {$OFS = $Separator} ; "$args" }
function mf {Param ($path) new-item -itemtype file -path $path -force}
$host.ui.RawUI.WindowTitle = "Jason`'s Rocking PowerShell Console: $([Math]::Round((gps -id $PID).vm/1mb,2)) MB Memory used"
function prompt { 
   # our theme
   $cdelim = [ConsoleColor]::DarkCyan 
   $chost = [ConsoleColor]::Green 
   $cloc = [ConsoleColor]::Cyan 

   write-host "$([char]0x0A7) " -n -f $cloc
   Write-Host "[$(get-location)]" -NoNewline
   Write-Host " - Yes Master?" -ForegroundColor Cyan -NoNewline
   Write-Host " > " -NoNewline
   $host.ui.RawUI.WindowTitle = "Jason`'s Rocking PowerShell Console: $([Math]::Round((gps -id $PID).vm/1mb,2)) MB Memory used"
   return ' '
} 
$docs = 'VMDrive:\Documents'
$Down = 'VMDrive:\Downloads'
