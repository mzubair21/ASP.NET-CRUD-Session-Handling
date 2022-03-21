using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using BLL;
using AppProps;
using System.Data;

namespace ByteWise_Login_System
{
    public partial class Login : System.Web.UI.Page
    {
        users u = new users();
        UsersBLL uBLL = new UsersBLL();
        protected void Page_Load(object sender, EventArgs e)
        {if(Session["accesslevel"] != null)
            {
                int accesslevel = int.Parse((string)Session["accesslevel"]);
                switch (accesslevel)
                {
                    case 0:
                        /*admin*/
                        Response.Redirect("Admin.aspx");
                        break;
                    case 1:
                        /*Emp*/
                        Response.Redirect("Employee.aspx");
                        break;
                    case 2:
                        /*Supplier*/
                        Response.Redirect("Supplier.aspx");
                        break;
                    case 3:
                        /*Customer*/
                        Response.Redirect("Customer.aspx");
                        break;
                }
            }
            
        }



        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("SignUp.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            u.Email = txtemail.Text;
            u.Password = txtpassword.Text;
            
           DataTable dt = uBLL.AutheticateUserBLL(u);
            if (dt.Rows.Count > 0)
            {
                Session["userid"] = dt.Rows[0]["userid"].ToString();
                Session["accesslevel"] = dt.Rows[0]["accesslevel"].ToString();
                Session["fname"] = dt.Rows[0]["fname"].ToString();
                Session["lname"] = dt.Rows[0]["lname"].ToString();
                int accesslevel = int.Parse((string)Session["accesslevel"]);
                switch (accesslevel)
                {
                    case 0:
                        /*admin*/
                        Response.Redirect("Admin.aspx");
                        break;
                    case 1:
                        /*Emp*/
                        Response.Redirect("Employee.aspx");
                        break;
                    case 2:
                        /*Supplier*/
                        Response.Redirect("Supplier.aspx");
                        break;
                    case 3:
                        /*Customer*/
                        Response.Redirect("Customer.aspx");
                        break;
                }
            }
            else
            {
                Response.Write("<script>alert('No User Found with this Record')</script>");
            }
        }
    }
}