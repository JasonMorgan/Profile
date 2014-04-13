cd c:\isdps
start-job -ScriptBlock {Update-Help -Force}
function ql { $args }
function qs ([string]$Separator) { $OFS = $Separator ; "$args" }
function mf {Param ($path) new-item -itemtype file -path $path -force}
$host.ui.RawUI.WindowTitle = "Jason`'s Rocking PowerShell Console"
function prompt { 
   # our theme
   $cdelim = [ConsoleColor]::DarkCyan 
   $chost = [ConsoleColor]::Green 
   $cloc = [ConsoleColor]::Cyan 

   write-host "$([char]0x0A7) " -n -f $cloc
   Write-Host "[$(get-location)]" -NoNewline
   Write-Host " - Yes Master?" -ForegroundColor Cyan -NoNewline
   Write-Host " > " -NoNewline
   return ' '
} 
$git = 'C:\Users\z598631\Documents\GitHub'
$kit = 'C:\Users\z598631\Documents\GitHub\Kitton_Mittons'
$docs = 'C:\Users\z598631\Documents'
$Down = 'C:\Users\z598631\Downloads'