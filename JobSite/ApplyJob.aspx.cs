using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace JobSite
{
    public partial class ApplyJob : System.Web.UI.Page
    {
        string dbAddress = ConfigurationManager.ConnectionStrings["myCon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/error.aspx?msg=NA");
            }
            else
            if ((User.Identity.IsAuthenticated) && (!User.IsInRole("JobSeeker")))
            {
                Response.Redirect("~/error.aspx?msg=NJ");
            }
            if (Request.QueryString["msg"] != null)
            {
                string jno = Request.QueryString["msg"];
                txtJno.Text = jno;
            }
            else
            {
                Response.Redirect("~/SJob.aspx");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (RUpload.HasFile)
            {
                string fileExt = System.IO.Path.GetExtension(RUpload.FileName);
                if (fileExt.Equals(".pdf") || fileExt.Equals(".doc") || fileExt.Equals(".PDF") || fileExt.Equals(".DOC"))
                {
                    RUpload.SaveAs(Server.MapPath("~/Resume/" + RUpload.FileName));
                    lbl.Text = "File Upload Sucessfully";
                    lbl.ForeColor = System.Drawing.Color.Green;

                    using (SqlConnection myCon = new SqlConnection(dbAddress))
                    {
                        MembershipUser currentUserName = Membership.GetUser(User.Identity.Name);
                        Guid Userid = (Guid)currentUserName.ProviderUserKey;

                        string que = "insert into ApplyJob(Jno,Contact,Email,Resume,jId) values (@jno,@c,@e,@r,@jid)";
                        SqlCommand mycmd = new SqlCommand(que, myCon);
                        myCon.Open();
                        mycmd.Parameters.AddWithValue("@jno", txtJno.Text.Trim());
                        mycmd.Parameters.AddWithValue("@c", txtCno.Text.Trim());
                        mycmd.Parameters.AddWithValue("@e", txtEmail.Text.Trim());
                        mycmd.Parameters.AddWithValue("@r", "~/Resume/" + RUpload.FileName);
                        mycmd.Parameters.AddWithValue("@jid", Userid);

                        mycmd.ExecuteNonQuery();
                        myCon.Close();
                        txtCno.Text = "";
                        txtEmail.Text = "";
                        SubmitMsg.Text = "Further Details will be mailed :-)";
                    }
                }
                else
                {
                    lbl.Text = "File Ext must be PDF/DOC";
                    SubmitMsg.Text = "Error";

                }

            }
        }
    }
}