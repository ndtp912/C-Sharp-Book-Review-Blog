using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using WebApplication1.Models;

namespace WebApplication1.dal
{
    public class historyDAO
    {
        public List<history> getAll(string userName)
        {
            List<history> historyList = new List<history>();
            try
            {
                String query = "select * from history where username='"+userName+"'";
                DataTable dataTable = new DataProvider().excuteQuery(query);

                List<history> list = new List<history>();
                for (int i = 0; i < dataTable.Rows.Count; i++)
                {
                    history h = new history();
                    h.UserName = dataTable.Rows[i].ItemArray[0].ToString();
                    h.BookID = Int32.Parse(dataTable.Rows[i].ItemArray[1].ToString());
                    h.ReadDate = DateTime.Parse(dataTable.Rows[i].ItemArray[2].ToString());
                    list.Add(h);
                }

                return list;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message + "Load Account");
            }
            return null;
        }
        public DataTable getHistory(string username)
        {
            try
            {
                String query = "select name, image from book join history on book.id=history.bookid where history.username='" + username + "'";
                return new DataProvider().excuteQuery(query);
               
            }
            catch (Exception ex)
            {
                Console.WriteLine("Searching" + ex.Message);
            }
            return null;
        }
        public List<book> getHistoryBook(string username)
        {
            List<book> list = new List<book>();
            try
            {
                String query = "select name, image from book join history on book.id=history.bookid where history.username='"+username+"'";
                DataTable dataTable = new DataProvider().excuteQuery(query);
                bool ck = true;
                for (int i = 0; i < dataTable.Rows.Count; i++) {
                    //string name = dataTable.Rows[i].ItemArray[0].ToString();
                    //string img = dataTable.Rows[i].ItemArray[1].ToString();
                    book b = new book();
                    b.id = 1;
                    b.name= dataTable.Rows[i].ItemArray[0].ToString();
                    b.shortDes = "";
                    b.des = "";
                    account a = new account();
                    a.username = "a";
                    a.password = "1";
                    b.createdby = a;
                    b.language = "";
                    b.img= dataTable.Rows[i].ItemArray[1].ToString();
                    b.pulishedDate = DateTime.Now;
                    b.upPoint = 0;
                    b.downPoint = 0;
                    for (int j = 0; j < list.Count; j++)
                    {
                        if (list[i].name == b.name)
                        {
                            ck = false;
                        }
                    }
                    if(ck==true) list.Add(b);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Searching" + ex.Message);
                
            }
            return list;
        }
        public int addHistory(string userName, int bookID)
        {
            DateTime date = DateTime.Now;
            string strAdd = "insert into history values ('" + userName + "'," + bookID + ",'" + date + "')";
            return new DataProvider().ExcuteNonQuery2(strAdd);
        }
    }
}