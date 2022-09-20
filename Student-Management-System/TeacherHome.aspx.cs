using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Management_System
{
    public partial class TeacherHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Teachername"] != null)
            {
                LabMsg.Text = Session["Teachername"].ToString();
            }
            else
            {
                Response.Redirect("TeacherLogin.aspx");
            }
        }

        protected void BtnLogout_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Session.Abandon();
            Response.Redirect("Home.aspx");
        }
    }
}