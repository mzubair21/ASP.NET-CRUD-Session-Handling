using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ByteWise_Login_System
{
    public partial class Employee : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["accesslevel"] != null)
            {
                int accesslevel = int.Parse((string)Session["accesslevel"]);
                switch (accesslevel)
                {
                    case 0:
                      Response.Redirect("Admin.aspx");
                       break;
                    //case 1:
                      //  Response.Redirect("Employee.aspx");
                      //  break;
                    case 2:
                        Response.Redirect("Supplier.aspx");
                        break;
                    case 3:
                        Response.Redirect("Customer.aspx");
                        break;
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session["accesslevel"] = null;
            Response.Redirect("Login.aspx");
            
        }
    }
}