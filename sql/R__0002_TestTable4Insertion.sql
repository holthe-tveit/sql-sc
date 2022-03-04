if  exists(SELECT * from sys.procedures where name = 'TestTable4Insertion')
BEGIN
drop procedure MyTests.TestTable4Insertion
end
go
create PROCEDURE MyTests.TestTable4Insertion
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
 exec tSQLt.AssertEquals '0', '1'
END;
