var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", () => "Hello PowerShell + DevOps Summit!");

app.Run();
