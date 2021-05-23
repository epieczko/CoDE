[environment]::setEnvironmentVariable('SCOOP','C:\CoDE\Scoop','User')
$env:SCOOP='C:\CoDE\Scoop'

Set-ExecutionPolicy RemoteSigned -scope CurrentUser -Confirm:$false
Set-ExecutionPolicy RemoteSigned -Scope Process -Confirm:$false

iex (new-object net.webclient).downloadstring('https://get.scoop.sh')

scoop install git
git config --global credential.helper manager
scoop bucket add prolifio https://github.com/epieczko/CoDE-bucket.git

scoop bucket add extras
scoop bucket add versions
scoop bucket add nightlies
scoop bucket add nirsoft
scoop bucket add php
scoop bucket add nerd-fonts
scoop bucket add nonportable
scoop bucket add java
scoop bucket add jetbrains

scoop install aria2

scoop install CoDE-all
