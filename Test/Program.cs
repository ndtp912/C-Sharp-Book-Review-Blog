using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using WebApplication1.dal;
using WebApplication1.Models;

namespace Test
{
    class Program
    {
        static void Main(string[] args)
        {
            List<book> list = new historyDAO().getHistoryBook("abc");
            foreach(book b in list)
            {
                Console.WriteLine(b);
            }
            Console.ReadKey();
        }
    }
}
