using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication1.dal;


namespace WebApplication1.Controllers
{
    public class DefaultController : Controller
    {
        // GET: Default
        public ActionResult Index()
        {
            String id = Request["acid"];
            commentDAO ad = new commentDAO();
            SendMail sendMailDao = new SendMail();
            string email = new accountDAO().getaccbyUser(id).email;
            ad.delete(int.Parse(id));
            string subject = "Tài khoản của bạn đã bị xóa!";
            string content = "Cảm ơn bạn đã đăng ký sử dụng dịch vụ!" ;
            sendMailDao.Send(email, subject, content);
            return RedirectToAction("Index", "Manage");
        }
    }
}