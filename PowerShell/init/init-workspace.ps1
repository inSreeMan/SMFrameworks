# Description : https://www.linwinsoft.com/blog/initial-folders
# Author : insreeman@linwinsoft.com
# Version : 1.0
#
# Create base workspace
$workspace = "$env:SystemDrive\ws"
New-Item $workspace -ItemType Directory -ErrorAction Ignore
# Create sub folders in workspace
$wsfolders = @('Backup','Library','Notes','test')
foreach ($item in $wsfolders) {
    New-Item -Name $item -Path $workspace -ItemType Directory -ErrorAction Ignore | Out-Null
    $readme = "$workspace\$item\readme.md"
    "https://www.linwinsoft.com/blog/initial-folders#$($item.ToLower())" | Out-File $readme -ErrorAction Ignore
}
# EOF