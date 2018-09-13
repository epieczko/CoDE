[environment]::setEnvironmentVariable('SCOOP','C:\SDE\Scoop','User')
$env:SCOOP='C:\SDE\Scoop'

Set-ExecutionPolicy RemoteSigned -scope CurrentUser -Confirm:$false
Set-ExecutionPolicy RemoteSigned -Scope Process -Confirm:$false

iex (new-object net.webclient).downloadstring('https://get.scoop.sh')

scoop bucket add sde-bucket https://github.com/epieczko/sde/bucket