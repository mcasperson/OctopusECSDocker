$hostIp = Invoke-WebRequest -Uri http://169.254.169.254/latest/meta-data/local-ipv4
if (-not (Test-Path env:mssqlPort)) { $env:mssqlPort = '1433' }
if (-not (Test-Path env:mssqlPassword)) { $env:mssqlPassword = 'Password01' }
$env:sqlDbConnectionString = "Server=$hostIp,$env:mssqlPort;Initial Catalog=Octopus;Persist Security Info=False;User ID=sa;Password=$env:mssqlPassword;MultipleActiveResultSets=False;Connection Timeout=300;"