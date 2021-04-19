Write-Host "Installing Chocolatey" -ForegroundColor Yellow -NoNewline
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
Write-Host "Chocolatey installed" -ForegroundColor Green -NoNewline

Write-Host "Installing Boxstarter" -ForegroundColor Yellow -NoNewline
CINST Boxstarter
Write-Host "Boxstarter Installed" -ForegroundColor Green -NoNewline

#Set-ExecutionPolicy Bypass -Scope Process -Force
#[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
#iex ((New-Object System.Net.WebClient).DownloadString('https://boxstarter.org/bootstrapper.ps1'))
#Get-Boxstarter -Force



