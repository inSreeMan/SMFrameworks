# define smFramework script root
$Global:smScriptRoot =  'c:\ws'
# connecting with smFramework profile defenition
$local:smProfile = "$Global:smScriptRoot\Library\smProfile.ps1"
if(Test-Path $smProfile -PathType Leaf){
    & $smProfile
}
