# Alias
Set-Alias ll ls
Set-Alias l ls
Set-Alias vim nvim
Set-Alias grep findstr
Set-Alias g git
Set-Alias pdf md-to-pdf
Set-Alias py python3

# Terminal-Icons
Import-Module -Name Terminal-Icons

# PSReadLine
Import-Module -Name PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -PredictionSource History

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding
