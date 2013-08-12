
Function Set-Small{
    $aff = (Get-Host).UI.RawUI
    $wff = $aff.WindowSize    
    $wff.Width = 50    
    $wff.Height = 10    
    $aff.WindowSize = $wff    
    $bff = $aff.BufferSize    
    $bff.Width = 50    
    $bff.Height = 10    
    $aff.BufferSize = $bff
}
    
#Set-Small

cls


. c:\Powershell\common.ps1

#add KeyIndicator class
add-type -path c:\Powershell\KeyIndicator_class.cs -ReferencedAssemblies System.Windows.Forms

#toggle Scroll Lock key
$wsh = New-Object -ComObject WScript.Shell
$wsh.SendKeys('{SCROLLLOCK}')

#call ScollLock indicator from KeyIndicator class
$result = [KeyIndicator]::ScrollLock()

e " "
e "#yellow#:: scroll lock switcher (c) 2012 opicron"
e " "

if ($result) {
	e "#darkgray#ScrollLock: #darkcyan#Enabled"
} else {
	e "#darkgray#ScrollLock: #darkcyan#Disabled"
}

e " "
e " "

$x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")





