
Install-Module -Name SqlServer -Scope CurrentUser -Confirm
Import-Module SqlServer

$testResult= Invoke-Sqlcmd -Query "exec tSQLt.RunAll" -ConnectionString $ConnectionString -OutputAs DataSet -verbose -AbortOnError *> tSqlTestResult.txt
return $testResult