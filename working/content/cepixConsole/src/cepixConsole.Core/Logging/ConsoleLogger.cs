using cepixConsole.Core.Logging.Modules;

namespace cepixConsole.Core.Logging;

public class ConsoleLogger: IConsoleLogger
{
    public void Log(string str)
    {
        Console.WriteLine(str);
    }
}