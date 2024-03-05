using cepixConsole.Core.Logging.Models;

namespace cepixConsole.Core.Logging;

public class ConsoleLogger: IConsoleLogger
{
    public void Log(String str)
    {
        Console.WriteLine(str);
    }
}