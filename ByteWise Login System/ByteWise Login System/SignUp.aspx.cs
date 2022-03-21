using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ByteWise_Login_System
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminSignUp.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmployeeSignUp.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerSignUp.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("SupplierSignUp.aspx");
        }
    }
}