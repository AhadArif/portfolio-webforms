using System;
using System.Web.UI;

namespace Portfolio
{
    public partial class TASK4 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Nothing to initialize yet
        }

        protected void btnClick_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "You clicked the button!";
        }

        protected void btnBackHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }
    }
}
