using System.Text.RegularExpressions;
using Spectre.Console;
using Spectre.Console.Cli;

namespace cepixConsole.Infrastructure.Commands.HelloWorldCommand.Validation;

public class HelloWorldCommandValidationAttribute : ParameterValidationAttribute
{
    public HelloWorldCommandValidationAttribute() : base("Attribute must follow format pattern") { }

    public override ValidationResult Validate(CommandParameterContext context)
    {
        if (context.Value is string)
        {
            Match fileFormatCorrect = Regex.Match(context.Value.ToString() ?? string.Empty, ".*a.*", RegexOptions.IgnoreCase);

            if (!fileFormatCorrect.Success)
            {
                return ValidationResult.Error(
                    $"{context.Parameter.PropertyName} ({context.Value}) value must be in .*a.* format.");
            }
            return ValidationResult.Success();
        }
        return ValidationResult.Error($"{context.Parameter.PropertyName} ({context.Value}) needs to be a string.");
    }
}
