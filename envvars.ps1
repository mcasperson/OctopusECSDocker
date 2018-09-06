While (!$(Test-Path C:\octopusinfo\mssqlip)) {
    Start-Sleep 5
}
$mssqlIp = cat C:\octopusinfo\mssqlip
if (-not (Test-Path env:mssqlPort)) { $env:mssqlPort = '1433' }
if (-not (Test-Path env:mssqlPassword)) { $env:mssqlPassword = 'Password01' }
$env:sqlDbConnectionString = "Server=$mssqlIp,$env:mssqlPort;Initial Catalog=Octopus;Persist Security Info=False;User ID=sa;Password=$env:mssqlPassword;MultipleActiveResultSets=False;Connection Timeout=300;"