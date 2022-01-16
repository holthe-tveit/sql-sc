CREATE TABLE [dbo].[TableB] (
    [Id] INT NOT NULL,
    [TableAId] int not null,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT FK_TableB_TableA FOREIGN KEY (TableAId) REFERENCES dbo.TableA(Id)
);

