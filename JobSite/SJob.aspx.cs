using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobSite
{
    public partial class SJob : System.Web.UI.Page
    {
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
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           // Session["Jno"]=GridView1.g
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
          
            if (e.CommandName=="Apply")
            {
                int index = Convert.ToInt16(e.CommandArgument);
                GridViewRow currrentrow = GridView1.Rows[index];
               int jid = Convert.ToInt16(currrentrow.Cells[0].Text);
                Response.Redirect("~/ApplyJob.aspx?msg=" + jid );
            }
           
        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }

}