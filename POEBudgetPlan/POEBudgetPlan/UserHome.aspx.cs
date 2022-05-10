using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace POEBudgetPlan
{
    public partial class UserHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (tbGrossMonthlyIncome.Text == "" || tbMonthlyTax.Text == "" || tbGrocery.Text == "" || tbWaterLights.Text == "" || tbTravelCost.Text == "" || tbCellphone.Text == "" || tbOther.Text == "")
            {
                Response.Write("<script language=javascript>alert('All fields are mandatory');</script>");
            }
            else
            {
                string cs = ConfigurationManager.ConnectionStrings["POETask2"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(cs))
                {
                    SqlCommand cmd = new SqlCommand("INSERT INTO Expenditure values('" + tbGrossMonthlyIncome.Text + "','" + tbMonthlyTax.Text + "','" + tbGrocery.Text + "','" + tbWaterLights.Text + "','" + tbTravelCost.Text + "','" + tbMonthlyTax.Text + "','" + tbOther.Text + "')", conn);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
                ClearFields();

                Response.Write("<script language=javascript>alert('Expenses successfully saved');</script>");
            }
                
        }

        public void ClearFields()
        {
            tbGrossMonthlyIncome.Text = "";
            tbMonthlyTax.Text = "";
            tbGrocery.Text = "";
            tbWaterLights.Text = "";
            tbTravelCost.Text = "";
            tbCellphone.Text = "";
            tbOther.Text = "";
        }
    }
}