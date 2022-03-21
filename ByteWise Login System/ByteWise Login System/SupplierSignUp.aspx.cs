using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppProps;
using DAL;
using BLL;
namespace ByteWise_Login_System
{
    public partial class SupplierSignUp : System.Web.UI.Page
    {

        users u = new users();
        UsersBLL uBLL = new UsersBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            showTable();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            u.Userid = txtid.Text;

            u.Email = txtemail.Text;
            u.Password = txtpassword.Text;

            u.Accesslevel = "2";

            u.Fname = txtfname.Text;
            u.Lname = txtlname.Text;

            u.Address = txtaddress.Text;
            u.Companyname = txtcompanyname.Text;

            uBLL.InsertUserBLL(u);
            showTable();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            u.Userid = txtid.Text;

            u.Email = txtemail.Text;
            u.Password = txtpassword.Text;

            u.Accesslevel = "2";

            u.Fname = txtfname.Text;
            u.Lname = txtlname.Text;

            u.Address = txtaddress.Text;
            u.Companyname = txtcompanyname.Text;

            uBLL.UpdateSupplierBLL(u);
            showTable();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            u.Userid = txtid.Text;
            u.Accesslevel = "2";
            uBLL.DeleteUserBLL(u);
            showTable();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            u.Userid = txtid.Text;
            u.Accesslevel = "2";
            DataTable dt = uBLL.SelectUserBLL(u);
            if (dt.Rows.Count > 0)
            {
                txtemail.Text = dt.Rows[0]["email"].ToString();
                txtpassword.Text = dt.Rows[0]["password"].ToString();
                txtfname.Text = dt.Rows[0]["fname"].ToString();
                txtlname.Text = dt.Rows[0]["lname"].ToString();
                txtaddress.Text = dt.Rows[0]["address"].ToString();
                txtcompanyname.Text = dt.Rows[0]["companyname"].ToString();
                showTable();
            }
            else
            {
                Response.Write("<script>alert('No User Found with this Record')</script>");
            }

        }

        void showTable()
        {
            gv.DataSource = uBLL.ShowAllSuppliersBLL();
            gv.DataBind();
        }
    }
}