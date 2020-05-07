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
    public partial class EditJob : System.Web.UI.Page
    {
        string dbAddress = ConfigurationManager.ConnectionStrings["myCon"].ConnectionString;
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
            else
            if (!Page.IsPostBack)
            {
                Load_Data();
            }
            //else
            //{
            //    data();
            //}
        }
        protected void Load_Data()
        {
            using (SqlConnection mycon = new SqlConnection(dbAddress))
            {
                mycon.Open();
                string que = "select Jno from Post_Job where cId=@cid";
                SqlCommand mycmd = new SqlCommand(que, mycon);
                MembershipUser currentUser = Membership.GetUser(User.Identity.Name);
                Guid currentUId = (Guid)currentUser.ProviderUserKey;

                mycmd.Parameters.AddWithValue("@cid", currentUId);
                ddljNo.DataSource = mycmd.ExecuteReader();
                ddljNo.DataTextField = "Jno";
                ddljNo.DataValueField = "Jno";
                ddljNo.DataBind();
                mycon.Close();

            }
        }


        protected void data()
        {
            using (SqlConnection mycon = new SqlConnection(dbAddress))
            {
                mycon.Open();

                string load = "Select * from Post_Job where Jno=@id ";
                SqlCommand mycmd = new SqlCommand(load, mycon);
                mycmd.Parameters.AddWithValue("@id", ddljNo.SelectedValue);

                SqlDataReader readit = mycmd.ExecuteReader();
                readit.Read();
                txtDesig.Text = readit["Feild"].ToString();
                txtExp.Text = readit["Exp"].ToString();
                txtPost.Text = readit["Post"].ToString();
                readit.Close();
                mycon.Close();
            }
        }

 

        protected void btnUpdate_Click1(object sender, EventArgs e)
        {
            using (SqlConnection mycon = new SqlConnection(dbAddress))
            {
                string up = "update Post_Job set Feild =@f ,Exp=@e ,Post=@p where Jno=@id";
                mycon.Open();
                SqlCommand mycmd = new SqlCommand(up, mycon);

                mycmd.Parameters.AddWithValue("@id", ddljNo.SelectedValue);
                mycmd.Parameters.AddWithValue("@f", txtDesig.Text);
                mycmd.Parameters.AddWithValue("@e", txtExp.Text);
                mycmd.Parameters.AddWithValue("@p", txtPost.Text);
                mycmd.ExecuteNonQuery();

                mycon.Close();
                lblmsg.Text = "Record Update";
                txtDesig.Text = "";
                txtExp.Text = "";
                txtPost.Text = "";
            }
        }

        protected void ddljNo_SelectedIndexChanged(object sender, EventArgs e)
        {
            data();
            lblmsg.Text = " ";
        }
    }
    
}