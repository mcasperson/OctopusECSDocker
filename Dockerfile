FROM octopusdeploy/octopusdeploy:2018.8.2
COPY envvars.ps1 /
ENTRYPOINT ./envvars.ps1 && powershell -File ./Server/configure-server.ps1 -Verbose && powershell -File ./Server/run-server.ps1 -Verbose