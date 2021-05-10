using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication1.dal;

namespace WebApplication1.Controllers
{
    public class DeleteAccountController : Controller
    {
        // GET: DeleteAccount
        public ActionResult Index()
        {
            String id = Request["aid"];
            accountDAO ad = new accountDAO();
           
                    ad.delete(id);
            return RedirectToAction("Index", "Manage");
        }
    }
}