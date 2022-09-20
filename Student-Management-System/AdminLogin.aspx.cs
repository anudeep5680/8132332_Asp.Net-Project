using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Student_Management_System
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButLogin_Click(object sender, EventArgs e)
        {
                string mainconn = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
                SqlConnection sqlconn = new SqlConnection(mainconn);
                string sqlquery = "Select * from AdminCredentials where UserID=@UserID and Password=@Password";
                SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
                SqlParameter p1 = new SqlParameter("UserID", TxtAdminId.Text);
                SqlParameter p2 = new SqlParameter("Password", TxtPwdAdmin.Text);
                sqlcomm.Parameters.Add(p1);
                sqlcomm.Parameters.Add(p2);
                sqlconn.Open();
                SqlDataReader dr = sqlcomm.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                Labmsg.Text = "Login Success";
                Session["Adminname"] = "Welcome " + TxtAdminId.Text;
                Response.Redirect("AdminPage.aspx");
            }
            else
            {
                Labmsg.Text = "Invalid Details";
            }
        }

        protected void ButNewAdmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("New Admin Registration.aspx");
        }
    }
}