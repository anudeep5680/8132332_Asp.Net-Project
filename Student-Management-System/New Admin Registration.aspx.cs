using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Management_System
{
    public partial class New_Admin_Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButRegister_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "Insert into [dbo].[AdminCredentials] (UserID, Password) values (@UserID,@Password)";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlconn.Open();
            sqlcomm.Parameters.AddWithValue("@UserID", TxtNewUserID.Text);
            sqlcomm.Parameters.AddWithValue("@Password", TxtNewUserPwd.Text);
            if(TxtNewUserPwd.Text==TxtNewUserPwdConfirm.Text)
            {
                sqlcomm.ExecuteNonQuery();
                sqlconn.Close();
                Labmsg.Text = "New Admin Created Sucessfully";
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                Labmsg.Text = "Passwords aren't Matching!";
            }
        }
    }
}