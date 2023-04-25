var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", () => "Hello from PowerShell + DevOps Summit!");

app.Run();
