using System;
using System.Web.UI;

namespace Portfolio
{
    public partial class TASK1 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblMessage.Text = "Hello, World!";
            }
        }

        protected void btnBackHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx"); // Make sure Home.aspx exists at root level
        }
    }
}
