# Run this file from an Administrator PowerShell, then restart Windows.

dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
bcdedit /set hypervisorlaunchtype auto
wsl --set-default-version 2

Write-Host ""
Write-Host "WSL2 features were requested. Restart Windows before installing Ubuntu."
