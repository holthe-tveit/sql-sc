param(
	[string]$ConnectionString
)
Install-Module -Name SqlServer -Scope CurrentUser -Confirm
Import-Module SqlServer

Invoke-Sqlcmd -Query "exec tSQLt.RunAll" -ConnectionString $ConnectionString -OutputAs DataSet -verbose