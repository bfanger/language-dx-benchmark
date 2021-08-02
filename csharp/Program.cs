using System;
using System.Text.Json;

namespace MyApp
{
     public class Data
    {
        public int a { get; set; }
        public int b { get; set; }
    }
    class Program
    {
        static void Main(string[] args)
        {
            string jsonString = @"{ ""a"": 1, ""b"": 2 }";
            var data = JsonSerializer.Deserialize<Data>(jsonString);
            Console.WriteLine(data.a + data.b);
        }
    }
}