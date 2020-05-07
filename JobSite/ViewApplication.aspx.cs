using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobSite
{
    public partial class ViewApplication : System.Web.UI.Page
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
        }


        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            MembershipUser currentUser = Membership.GetUser(User.Identity.Name);
            Guid currentUId = (Guid)currentUser.ProviderUserKey;
            e.Command.Parameters["@cId"].Value = currentUId;
        }


        protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Send")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow currrentrow = GridView1.Rows[index];
                string jname = currrentrow.Cells[1].Text;
                int jno = Convert.ToInt16(currrentrow.Cells[0].Text);
                Response.Redirect("~/Notify.aspx?msg=" + jno+","+jname);
            }

        }
    }
    
}