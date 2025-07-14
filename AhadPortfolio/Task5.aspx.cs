using System;
using System.Web.UI;

namespace Portfolio
{
    public partial class TASK5 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Calculate('+');
        }

        protected void btnSubtract_Click(object sender, EventArgs e)
        {
            Calculate('-');
        }

        protected void btnMultiply_Click(object sender, EventArgs e)
        {
            Calculate('*');
        }

        protected void btnDivide_Click(object sender, EventArgs e)
        {
            Calculate('/');
        }

        protected void btnBackHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }

        private void Calculate(char op)
        {
            try
            {
                double num1 = Convert.ToDouble(txtNum1.Text);
                double num2 = Convert.ToDouble(txtNum2.Text);
                double result = 0;

                switch (op)
                {
                    case '+': result = num1 + num2; break;
                    case '-': result = num1 - num2; break;
                    case '*': result = num1 * num2; break;
                    case '/': result = num2 != 0 ? num1 / num2 : double.NaN; break;
                }

                lblResult.Text = $"Result: {result}";
            }
            catch
            {
                lblResult.Text = "Invalid input!";
            }
        }
    }
}
