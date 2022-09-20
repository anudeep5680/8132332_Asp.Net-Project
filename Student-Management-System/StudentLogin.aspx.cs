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
    public partial class StudentLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButLogin_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            SqlDataAdapter a = new SqlDataAdapter($"Select * from student where Stfname='{TxtStdId.Text}' and Stphone='{TxtPwdStd.Text}' ", sqlconn);
            DataTable dt = new DataTable();
            a.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Labmsg.Text = "Login Success";
                Session["Studentname"] = "Welcome " + TxtStdId.Text;
                Session["Student"] = dt.Rows[0][1].ToString();
                Response.Redirect("StudentHome.aspx");
            }
            else
            {
                Labmsg.Text = "Invalid Details";
            }
        }
    }
}