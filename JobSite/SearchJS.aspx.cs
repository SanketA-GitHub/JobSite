using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobSite
{
    public partial class SearchJS : System.Web.UI.Page
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
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "Resume")
            {
                int index = Convert.ToInt16(e.CommandArgument);
                GridViewRow currrentrow = GridView1.Rows[index];
                int jid = Convert.ToInt16(currrentrow.Cells[0].Text);
            }

        }
    }
}