using System;
using System.Web.UI;

namespace Portfolio
{
    public partial class TASK2 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblDateTime.Text = "Current Server Time: " + DateTime.Now.ToString("f");
            }
        }

        protected void btnBackHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }
    }
}
