using cepixConsole.Core.Logging;

namespace cepixConsole.Core.tests;

public class Tests
{
    [SetUp]
    public void Setup()
    {
    }

    [Test]
    public void ConsoleLoggerWritesToConsole()
    {
        TextWriter writer = new StringWriter();
        Console.SetOut(writer);
        ConsoleLogger logger = new ConsoleLogger();
        logger.Log("test");
        Assert.That("test\r\n", Is.EqualTo(writer.ToString()));
    }
}