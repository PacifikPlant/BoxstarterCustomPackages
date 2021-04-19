Write-Host "Installing Chocolatey" -ForegroundColor Yellow -NoNewline
Set-ExecutionPolicy Bypass -Scope Process -Force
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
Write-Host "Chocolatey installed" -ForegroundColor Green -NoNewline

Write-Host "Installing Boxstarter" -ForegroundColor Yellow -NoNewline
CINST Boxstarter -y
Write-Host "Boxstarter Installed" -ForegroundColor Green -NoNewline
iex "refreshenv"

#Set-ExecutionPolicy Bypass -Scope Process -Force
#[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
#iex ((New-Object System.Net.WebClient).DownloadString('https://boxstarter.org/bootstrapper.ps1'))
#Get-Boxstarter -Force

# Get user credentials for autologin during reboots
#Write-Host "[ * ] Getting user credentials ..."
#Set-ItemProperty "HKLM:\SOFTWARE\Microsoft\PowerShell\1\ShellIds" -Name "ConsolePrompting" -Value $True
#if ([string]::IsNullOrEmpty($password)) {
#	$cred=Get-Credential $env:username
#} else {
#	$spasswd=ConvertTo-SecureString -String $password -AsPlainText -Force
#	$cred=New-Object -TypeName "System.Management.Automation.PSCredential" -ArgumentList $env:username, $spasswd
#}

#Install-BoxstarterPackage -PackageName https://raw.githubusercontent.com/PacifikPlant/BoxstarterCustomPackages/main/wsl.ps1 -Credential $cred

