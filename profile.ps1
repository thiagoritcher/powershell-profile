Function CDAmbiente {
	Set-Location "C:\work\Flex\ambiente\"
}
Set-Alias a -Value CDAmbiente

Function CDAmbienteAir {
	Set-Location "C:\work\Flex\ambiente-air\"
}

Set-Alias aa -Value CDAmbienteAir

Function GitUpdate {

    Write-Host "Ambiente"
	Set-Location "C:\work\Flex\ambiente\"
    git status 
    git pull

    cmd /c 'start upd.bat'

    Write-Host "Ambiente AIR"
    Set-Location "C:\work\Flex\ambiente-air\"
    git status 
    git pull

    Write-Host "Reverse V2"
    Set-Location "C:\work\Flex\reverse_v2\"
    git status 
    git pull
    
    Write-Host "Nvim"
    Set-Location "~\AppData\Local\nvim\"
    git status 
    git pull
    
    Write-Host "CMD"
    Set-Location "C:\cmd\"
    git status 
    git pull
    
    Write-Host "PowerShell"
    Set-Location "~\Documents\WindowsPowerShell"
    git status 
    git pull
}

Set-Alias u -Value GitUpdate
