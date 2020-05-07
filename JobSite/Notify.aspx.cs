using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
using System.Net.Mail;

namespace JobSite
{
    public partial class Notify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/error.aspx?msg=NA");
            }
            else
            if ((User.Identity.IsAuthenticated) && (!User.IsInRole("Company")))
            {
                Response.Redirect("~/error.aspx?msg=NC");
            }

            Label1.Text=Request.QueryString["msg"];
        }

        protected void Btn1_Click(object sender, EventArgs e)
        {
 
            string to = "sambalkar.ecti@gmail.com"; //To address    
            string from = "projecttesting1999@gmail.com"; //From address    
            MailMessage message = new MailMessage(from, to);

           // string mailbody = CKEditorControl1.Text;
            message.Subject = "Sending Email Using Asp.Net & C#";
            message.Body = CKEditorControl1.Text;
            message.BodyEncoding = System.Text.Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential("projecttesting1999@gmail.com", "testing@123");
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
            }

            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        
        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            string data = CKEditorControl1.Text;
            Label1.Text = data;
        }
    }
}
