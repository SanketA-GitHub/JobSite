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
    public partial class PostJob : System.Web.UI.Page
    {
        string dbAddress = ConfigurationManager.ConnectionStrings["myCon"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/error.aspx?msg=NA");
            }
            else 
            if((User.Identity.IsAuthenticated) && (!User.IsInRole("Company")))
            {
                Response.Redirect("~/error.aspx?msg=NC");
            }
        }

        protected void btnPost_Click(object sender, EventArgs e)
        {
            using (SqlConnection myCon = new SqlConnection(dbAddress))
            {


                MembershipUser currentUserName = Membership.GetUser(User.Identity.Name);
                Guid Userid = (Guid)currentUserName.ProviderUserKey;



                string save = "insert into Post_Job(cId,Post,Exp,Feild,Company) values(@u,@p,@e,@f,@c)";
                SqlCommand mycmd = new SqlCommand(save,myCon);
                myCon.Open();
                mycmd.Parameters.AddWithValue("@u", Userid);
                mycmd.Parameters.AddWithValue("@p", txtPost.Text.Trim());
                mycmd.Parameters.AddWithValue("@e", txtExp.Text.Trim());
                mycmd.Parameters.AddWithValue("@f", txtDesignation.Text.Trim());
                mycmd.Parameters.AddWithValue("@c", txtComp.Text.Trim());

                mycmd.ExecuteNonQuery();
               
                myCon.Close();
                lblMsg.Text= "Job Requirenment Posted Successfully";
                txtDesignation.Text = "";
                txtExp.Text = "";
                txtPost.Text = "";
                txtComp.Text = "";
            }
        }


    }
}