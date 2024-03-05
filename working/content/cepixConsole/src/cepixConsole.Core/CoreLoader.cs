using cepixConsole.Core.Logging;
using cepixConsole.Core.Logging.Models;
using Microsoft.Extensions.DependencyInjection;

namespace cepixConsole.Core;

public static class CoreLoader
{
    public static void Load(IServiceCollection serviceCollection)
    {
        serviceCollection.AddSingleton<IConsoleLogger, ConsoleLogger>();
    }
}