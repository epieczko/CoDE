[environment]::setEnvironmentVariable('SCOOP','C:\CoDE\Scoop','User')
$env:SCOOP='C:\CoDE\Scoop'

Set-ExecutionPolicy RemoteSigned -scope CurrentUser -Confirm:$false
Set-ExecutionPolicy RemoteSigned -Scope Process -Confirm:$false

iex (new-object net.webclient).downloadstring('https://get.scoop.sh')

scoop install git
scoop bucket add prolifio https://github.com/epieczko/CoDE-bucket.git

scoop install aria2

scoop install CoDE-all
