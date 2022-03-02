if not exists(SELECT * from sys.schemas where name = 'MyTests')
begin
exec(' CREATE SCHEMA [MyTests] AUTHORIZATION [dbo]');

EXEC sys.sp_addextendedproperty @name=N'tSQLt.TestClass', @value=1 , @level0type=N'SCHEMA',@level0name=N'MyTests';
end