#ps1
# Setup script for preparing windows virtual machines to work with Puppet master

ac -Encoding UTF8  C:\Windows\system32\drivers\etc\hosts "192.168.0.104	ar-pe-master01.localdomain	ar-pe-master01"
[Net.ServicePointManager]::ServerCertificateValidationCallback = {$true}; $webClient = New-Object System.Net.WebClient; $webClient.DownloadFile('https://ar-pe-master01:8140/packages/current/install.ps1', 'install.ps1'); .\install.ps1 extension_requests:pp_role=dhcp-server extension_requests:pp_created_by=AndyR
