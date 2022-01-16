# Source Control of SQL Server databases in Azure
In this repository I try to showcase a few different approaches to source control and how these can be integrated into a CI/CD pipeline.

## What to version
1. Imperative  
Scripts in a defined order leading up to the current state. Typical examples are:
     * <a href="https://docs.microsoft.com/en-us/ef/core/managing-schemas/migrations/?tabs=dotnet-core-cli" target="_blank">Entity Framework Migrations</a>
     * <a href="https://flywaydb.org/" target="_blank">Flyway</a>
     * Manually created DDL/DML scrips
2. Desired State configuration.  
This stores what the end state should be like, and leave it up to the system to get there.
     * <a href="https://www.red-gate.com/products/sql-development/sql-source-control/" target="_blank">Red-Gate SQL Source Control</a>
     *<a href="https://docs.microsoft.com/en-us/sql/ssdt/how-to-create-a-new-database-project?view=sql-server-ver15" target="_blank"> Microsoft SQL Project / DacPac</a>
3. Hybrid 
Where both Imperative and DSC approaches are used.
    * <a href="https://www.red-gate.com/products/sql-development/sql-source-control/" target="_blank">Red-Gate SQL Source Control</a>

## CI/CD Pipelines
In a Continuous Integration / Continuous Deployment pipeline as well as DevOps in general we want to make the inner loop as quick and safe as possible so we can deliver value and gain insights as soon as possible.  
Databases have a long history of not being fully integrated into this pipeline, and this has been and are still causing great problems for many teams.

Here we will cover GitHub Actions and deploying to Azure SQL, but any CI/CD pipeline will work. GitHub was simply chosen to learn of what it provides.