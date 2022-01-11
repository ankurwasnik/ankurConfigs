# Prompt
Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt amro

#Icons
Import-Module -Name Terminal-Icons

#PSReadLine
Set-PSReadLineOption -BellStyle None
Set-PSReadLineOption -PredictionSource History 

# Alias 
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias grep findstr

#Utilities
function which ($command){
    Get-Command -Name $command -ErrorAction SilentlyContinue |
        Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
