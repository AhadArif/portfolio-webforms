using System;
using System.Web.UI;

namespace Portfolio
{
    public partial class TASK3 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // no initialization needed yet
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.Trim();
            if (!string.IsNullOrEmpty(name))
            {
                lblWelcome.Text = $"Welcome, {name}!";
            }
            else
            {
                lblWelcome.Text = "Please enter your name.";
            }
        }

        protected void btnBackHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }
    }
}
