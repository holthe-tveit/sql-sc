using Microsoft.EntityFrameworkCore;
using WebWithEFC6.Models;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddRazorPages();
builder.Services.AddDbContext<SQLSC_EFCContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("SQLSC_EFCContext")));

builder.Services.AddDatabaseDeveloperPageExceptionFilter();
var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error");
    app.UseHsts();
    using (var scope = app.Services.CreateScope())
    {
        var services = scope.ServiceProvider;

        var context = services.GetRequiredService<SQLSC_EFCContext>();
        context.Database.EnsureCreated();
        // DbInitializer.Initialize(context);
    }
}
else
{
    app.UseDeveloperExceptionPage();
    app.UseMigrationsEndPoint();
}



app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapRazorPages();


app.Run();
