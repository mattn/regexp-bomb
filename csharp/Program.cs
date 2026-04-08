using System;
using System.Diagnostics;
using System.Text.RegularExpressions;

class Program
{
    static void Main()
    {
        var regex = new Regex(@"(a+)*b$");
        var sw = Stopwatch.StartNew();
        bool result = regex.IsMatch("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaba");
        sw.Stop();
        Console.WriteLine($"result: {result}");
        Console.WriteLine($"elapsed: {sw.Elapsed}");
    }
}
