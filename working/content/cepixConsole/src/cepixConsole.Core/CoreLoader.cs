using cepixConsole.Core.Logging;
using cepixConsole.Core.Logging.Modules;
using cepixConsole.Core.Models.Application;
using Microsoft.Extensions.DependencyInjection;

namespace cepixConsole.Core;

public static class CoreLoader
{
    public static void Load(IServiceCollection serviceCollection)
    {
        serviceCollection.AddSingleton<IConsoleLogger, ConsoleLogger>();
    }
}