using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Management_System
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAdminRedirect_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }

        protected void BtnTeacher_Click(object sender, EventArgs e)
        {
            Response.Redirect("TeacherLogin.aspx");
        }

        protected void BtnStudent_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentLogin.aspx");
        }
    }
}