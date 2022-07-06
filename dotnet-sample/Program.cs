var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", () => "Hello Cincinnati Software Craftsmanship!");

app.Run();
