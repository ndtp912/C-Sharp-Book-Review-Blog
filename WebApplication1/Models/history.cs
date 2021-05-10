using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Models
{
    public class history
    {
        private string _userName;

        public string UserName
        {
            get { return _userName; }
            set { _userName = value; }
        }
        private int _bookID;

        public int BookID
        {
            get { return _bookID; }
            set { _bookID = value; }
        }
        private DateTime _readDate;

        public DateTime ReadDate
        {
            get { return _readDate; }
            set { _readDate = value; }
        }
        public history()
        {

        }
        public history(string userName, int bookID, DateTime readDate)
        {
            this.UserName = userName;
            this.BookID = BookID;
            this.ReadDate = readDate;
        }
        public string show()
        {
            return this.UserName + "\t" + this.BookID;
        }

    }
}