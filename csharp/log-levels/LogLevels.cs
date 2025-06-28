using System.Collections;

static class LogLine
{
    public static string Message(string logLine)
    {
        var parts = new List<string>(logLine.Split(' '));
        parts.RemoveAt(0);

        string output = String.Join(' ', parts.ToArray());

        return output;
    }

    public static string LogLevel(string logLine)
    {
        throw new NotImplementedException("Please implement the (static) LogLine.LogLevel() method");
    }

    public static string Reformat(string logLine)
    {
        throw new NotImplementedException("Please implement the (static) LogLine.Reformat() method");
    }
}
