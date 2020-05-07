using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobSite
{
    public partial class error : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["msg"] != null && Request.QueryString["msg"]=="NA")
            {
                Response.Redirect("~/default.aspx");
            }
            else if (Request.QueryString["msg"] != null && Request.QueryString["msg"] == "NC")
            {
                lblerror.Text = "Authorized Member Required";
            }
            else if (Request.QueryString["msg"] != null && Request.QueryString["msg"] == "NJ")
            {
                lblerror.Text = "Authorized Member Required(JobSeeker)";
            }
            else if (Request.QueryString["msg"] != null && Request.QueryString["msg"] == "N")
            {
                lblerror.Text = "Only Admin Can Access this Page";
            }
            else if (User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/default.aspx");
            }

        }
    }
}