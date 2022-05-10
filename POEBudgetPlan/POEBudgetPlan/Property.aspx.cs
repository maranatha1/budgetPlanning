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
    public partial class Property : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["POETask2"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO Property values('" + tbRentalAmount.Text + "','" + tbPurchasePrice.Text + "','" + tbDeposit.Text + "','" + tbInterestRate.Text + "','" + tbRepayment.Text + "')", conn);
                conn.Open();
                cmd.ExecuteNonQuery();
            }
            Response.Redirect("Estimation.aspx");
        }
    }
}