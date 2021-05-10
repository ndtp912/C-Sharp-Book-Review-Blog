using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Mail;
using System.Configuration;
using System.Net;
using System.Net.Sockets;

namespace Commo
{
    public class MailHelp
    {
        public void SendVoid(string toemail, string content, string subject)
        {
            var fromemail = "fadedwithtime1409@gmail.com";
            //ConfigurationManager.AppSettings["fromEmail"].ToString();
            var title = "abc";
            //ConfigurationManager.AppSettings["fromEmailtitle"].ToString();
            var fromEmailPassword = "fadedwithtime";
            //ConfigurationManager.AppSettings["fromEmailPassword"].ToString();
            var smtpHost = "stmp.gmail.com";
            //ConfigurationManager.AppSettings["SMTPHost"].ToString();
            var smtpPost = "587"; 
                ConfigurationManager.AppSettings["SMTPPost"].ToString();
            bool enable = true; 
                //bool.Parse(ConfigurationManager.AppSettings["EnabledaSSL"].ToString());
            string body = content;
            MailMessage mail = new MailMessage(new MailAddress(fromemail, title), new MailAddress(toemail));
            mail.Subject = subject;
            mail.IsBodyHtml = true;
            mail.Body = body;
            var client = new SmtpClient();
            client.Credentials=new NetworkCredential(fromemail,fromEmailPassword);
            client.Host = smtpHost;
            client.EnableSsl=enable;
            client.Port = !string.IsNullOrEmpty(smtpPost) ? Convert.ToInt32(smtpPost) : 0;
            client.Send(mail);

        }
    }
}
