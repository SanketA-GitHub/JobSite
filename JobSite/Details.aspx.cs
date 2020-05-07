using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;



namespace JobSite
{
    public partial class WebForm2 : System.Web.UI.Page
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
                Response.Redirect("~/error.aspx?msg=NC");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection mycon =new SqlConnection(dbAddress))
            {
                MembershipUser currentUserName = Membership.GetUser(User.Identity.Name);
                Guid Userid = (Guid)currentUserName.ProviderUserKey;

                mycon.Open();
                string add = "insert into jEDetails(jname,stream,m10,m12,Bachlor,Master,spec,jId,Exp) values(@j,@s,@m10,@m12,@b,@m,@sp,@jid,@exp)";
                SqlCommand mycmd = new SqlCommand(add, mycon);

                mycmd.Parameters.AddWithValue("@j",currentUserName.ToString());
                mycmd.Parameters.AddWithValue("@s", txtStream.Text.Trim());
                mycmd.Parameters.AddWithValue("@m10", txt10.Text.Trim());
                mycmd.Parameters.AddWithValue("@m12", txt12.Text.Trim());
                mycmd.Parameters.AddWithValue("@b", txtBachlor.Text.Trim());
                mycmd.Parameters.AddWithValue("@exp", txtExp.Text.Trim());
                mycmd.Parameters.AddWithValue("@m", txtMaster.Text.Trim());
                mycmd.Parameters.AddWithValue("@sp", txtSpec.Text.Trim());
                mycmd.Parameters.AddWithValue("@jid", Userid.ToString());
                mycmd.ExecuteNonQuery();

                mycon.Close();
                txtmsg.Text = "Record Inserted ";
                txt10.Text = " ";
                txt12.Text = " ";
                txtBachlor.Text = " ";
                txtSpec.Text = " ";
                txtMaster.Text = " ";
                txtStream.Text = " ";
                txtExp.Text = " ";
            }
        }

        protected void txtStream_TextChanged(object sender, EventArgs e)
        {

        }
      
    }
}