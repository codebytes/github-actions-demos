var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", () => "Hello PowerShell + DevOps Summit!");

app.Run();

// Make Program accessible for integration tests (WebApplicationFactory<Program>)
public partial class Program { }
