using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Student_Management_System
{
    public partial class TeacherLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButLogin_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            SqlDataAdapter a = new SqlDataAdapter($"Select * from tutor where Tname='{TxtTeacherId.Text}' and Tphone='{TxtPwdTeacher.Text}' ",sqlconn);
            DataTable dt = new DataTable();
            a.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Labmsg.Text = "Login Success";
                Session["Teachername"] = "Welcome " + TxtTeacherId.Text;
                Session["Teacher"] = dt.Rows[0][1].ToString();
                Response.Redirect("TeacherHome.aspx");
            }
            else
            {
                Labmsg.Text = "Invalid Details";
            }
        }
    }
}