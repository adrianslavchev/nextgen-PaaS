## Update of WebApp

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri 'https://github.com/adrianslavchev/nextgen-IaaS/archive/master.zip' -OutFile 'C:\Temp\master.zip'
cd C:\Temp\
cmd /c C:\7z\7z.exe x C:\Temp\master.zip
Stop-Website -Name nextgen
cmd /c rd /s /q C:\inetpub\wwwroot\NextGen
cmd /c md C:\inetpub\wwwroot\NextGen
xcopy /e C:\Temp\nextgen-IaaS-master\WebApp2\. C:\inetpub\wwwroot\NextGen
Start-Website -Name nextgen
cmd /c rd /s /q C:\Temp\nextgen-IaaS-master
cmd /c del -y C:\Temp\master.zip
