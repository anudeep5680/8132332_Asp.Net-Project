using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_Management_System
{
    public partial class StudentHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Studentname"] != null)
            {
                LabMsg.Text = Session["Studentname"].ToString();
            }
            else
            {
                Response.Redirect("StudentLogin.aspx");
            }
        }

        protected void BtnLogOut_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Session.Abandon();
            Response.Redirect("Home.aspx");
        }
    }
}