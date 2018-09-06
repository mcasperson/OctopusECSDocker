FROM octopusdeploy/octopusdeploy:2018.8.2
COPY envvars.ps1 /
COPY service-discovery.ps1 /
COPY start.ps1 /
ENTRYPOINT powershell -File ./start.ps1