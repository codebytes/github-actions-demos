using Microsoft.AspNetCore.Mvc.Testing;
using System.Net;
using Xunit;

namespace dotnet_sample.Tests;

public class EndpointTests : IClassFixture<WebApplicationFactory<Program>>
{
    private readonly WebApplicationFactory<Program> _factory;

    public EndpointTests(WebApplicationFactory<Program> factory)
    {
        _factory = factory;
    }

    [Fact]
    public async Task GetRoot_ReturnsOkWithGreeting()
    {
        var client = _factory.CreateClient();

        var response = await client.GetAsync("/");

        Assert.Equal(HttpStatusCode.OK, response.StatusCode);
        var content = await response.Content.ReadAsStringAsync();
        Assert.Contains("Hello", content);
    }

    [Fact]
    public async Task GetRoot_ReturnsTextContent()
    {
        var client = _factory.CreateClient();

        var response = await client.GetAsync("/");

        Assert.Equal("text/plain", response.Content.Headers.ContentType?.MediaType);
    }
}
