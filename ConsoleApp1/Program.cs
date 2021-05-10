using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WebApplication1.dal;
using WebApplication1.Models;

namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            List<book> list = new BookDAO().getAll(1,5);
            foreach (book b in list)
            {
                Console.WriteLine(b);
            }
            Console.ReadKey();
        }
    }
}
