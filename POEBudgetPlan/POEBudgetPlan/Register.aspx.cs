using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Security.Cryptography;
using System.Text;

namespace POEBudgetPlan
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (tbName.Text != "" && tbSurname.Text != "" && tbEmail.Text != "" && tbPassword.Text != "" && tbConfirmPassword.Text != "")
            {
                if (tbPassword.Text == tbConfirmPassword.Text)
                {
                    
                    string cs = ConfigurationManager.ConnectionStrings["POETask2"].ConnectionString;
                    using (SqlConnection conn = new SqlConnection(cs))
                    {
                        SqlCommand cmd = new SqlCommand("INSERT INTO [Users] values('" + tbName.Text + "','" + tbSurname.Text + "','" + tbEmail.Text + "','" + tbPassword.Text + "')", conn);
                        conn.Open();
                        cmd.ExecuteNonQuery();
                    }
                    Response.Redirect("UserHome.aspx");
                    Response.Write("<script language=javascript>alert('You have been registered successfully!');</script>");
                }
                else
                {
                    //throw an exceptopn

                    Response.Write("<script language=javascript>alert('Password does not match, please enter matching password.');</script>");

                }
            }
            else
            {
                lblMessage.ForeColor = Color.Red;
                lblMessage.Text = "All Field Are Mandatory";

            }
        }
       
    }

    public class Utils
    {
        public static string hashPassword(string password)
        {
            SHA1CryptoServiceProvider sha1 = new SHA1CryptoServiceProvider();
            byte[] passwordBytes = Encoding.ASCII.GetBytes(password);
            byte[] encrypted_Bytes = sha1.ComputeHash(passwordBytes);
            return Convert.ToBase64String(encrypted_Bytes);
        }
    }
}