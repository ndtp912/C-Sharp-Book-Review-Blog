using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication1.dal;
using WebApplication1.Models;

namespace WebApplication1.Controllers
{
    public class AddBookController : Controller
    {
        // GET: AddBook
        public ActionResult Index()
        {
            return RedirectToAction("Index", "Manage");
        }

        [HttpPost]
        public ActionResult IndexPost()
        {
            //get properties of book
            string[] category_ids = Request["category"].Split(','); 
            string title = Request["title"];
            string img = Request["img"];
            string languge = Request["language"];
            string des = Request["description"];
            account a = (account)Session["user"];
            BookDAO bd = new BookDAO();
            //add book to database
            bd.addBook(title, des, a.Username, languge, img);
            //get id of current book
            int bid = bd.getLastId();
            //add all the categories of book to book_categories
            for (int i = 0; i < category_ids.Length-1; i++)
            {            
                int cid = Int32.Parse(category_ids[i]);
                bd.addCforlast(cid, bid);
            }
            AuthorDAO authorDAO = new AuthorDAO();
            //check if book's author is already existed 
            if (Request["isNewAuthor"] == null)
            {
                //add a connection between book and author
                int aid = Int32.Parse(Request["authorid"]);
                authorDAO.AddAuthorForBook(aid, bid);
            }
            else
            {
                //create new author
                string author_name = Request["author_name"];
                string lifestory = Request["lifestory"];
                string nation = Request["nation"];
                string dob = DateTime.Parse(Request["dob"]).ToString("yyyy-MM-dd");
                authorDAO.AddAuthor(author_name,lifestory,nation,dob);
                //add a connection between book and new author
                authorDAO.AddAuthorForBook(authorDAO.getLastId(), bid);
            }
            return RedirectToAction("Index", "Manage");
        }
    }
}