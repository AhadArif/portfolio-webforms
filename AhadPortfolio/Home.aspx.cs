using System;
using System.Web.UI;

namespace PortfolioProject
{
    public partial class Home : Page
    {
        /* ---------- page life‑cycle ---------- */
        protected void Page_Load(object sender, EventArgs e)
        { /* nothing to initialise yet */ }

        /* ---------- navigation buttons ---------- */
        protected void btnHelloWorld_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Task1.aspx");     // opens WebForm Task1.aspx in root
        }

        protected void btnDateTime_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Task2.aspx");     // WebForm Task2.aspx
        }

        protected void btnSimpleForm_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Task3.aspx");     // WebForm Task3.aspx
        }

        protected void btnButtonClick_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Task4.aspx");     // WebForm Task4.aspx
        }

        protected void btnCalci_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Task5.aspx");     // WebForm Task5.aspx
        }
    }
}
