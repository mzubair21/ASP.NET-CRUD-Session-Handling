using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AppProps;

namespace DAL
{
    public class UsersDAL
    {
        DbCon db = new DbCon();
        public bool InsertUserDAL(users u)
        {
            string query = "insert into users values ('" + u.Userid + "','" + u.Accesslevel + "','" + u.Email + "','" + u.Password + "','" + u.Fname + "','" + u.Lname + "','" + u.Address + "','" + u.Empscale + "','" + u.Companyname + "','" + u.Admintype + "','" + u.Custmembership + "')";
            return db.UDI(query);
        }
        //Update
        public bool UpdateAdminDAL(users u)
        {
            string query = "Update users set email = '" + u.Email + "' , password = '" + u.Password + "' , fname = '" + u.Fname + "',lname = '" + u.Lname + "' ,address = '" + u.Address + "' ,admintype = '" + u.Admintype + "' where userid = '" + u.Userid + "'";
            return db.UDI(query);
        }

        public bool UpdateEmployeeDAL(users u)
        {
            string query = "Update users set email = '" + u.Email + "' , password = '" + u.Password + "' , fname = '" + u.Fname + "',lname = '" + u.Lname + "' ,address = '" + u.Address + "' ,empscale = '" + u.Empscale + "' where userid = '" + u.Userid + "'";
            return db.UDI(query);
        }
        public bool UpdateCustomerDAL(users u)
        {
            string query = "Update users set email = '" + u.Email + "' , password = '" + u.Password + "' , fname = '" + u.Fname + "',lname = '" + u.Lname + "' ,address = '" + u.Address + "' ,custmembership = '" + u.Custmembership + "' where userid = '" + u.Userid + "'";
            return db.UDI(query);
        }
        public bool UpdateSupplierDAL(users u)
        {
            string query = "Update users set email = '" + u.Email + "' , password = '" + u.Password + "' , fname = '" + u.Fname + "',lname = '" + u.Lname + "' ,address = '" + u.Address + "' ,companyname = '" + u.Custmembership + "' where userid = '" + u.Userid + "'";
            return db.UDI(query);
        }

        //Delete
        public bool DeleteUserDAL(users u)
        {
            string query = "delete users  where userid = '" + u.Userid + "' and accesslevel = '"+u.Accesslevel+"' ";
            return db.UDI(query);
        }
        //Select
        public DataTable SelectUserDAL(users u)
        {
            string query = "Select * from users  where userid = '"+u.Userid+"' and accesslevel= '"+u.Accesslevel+"'";
            return db.Search(query);
        }
        public DataTable AutheticateUserDAL(users u)
        {
            string query = "Select * from users  where email = '" + u.Email + "' and password = '" + u.Password + "'";
            return db.Search(query);
        }
        public DataTable ShowAllUsersDAL()
        {
            string query = "Select * from users  ";
            return db.Search(query);
        }
        public DataTable ShowAllAdminsDAL()
        {
            return ShowAllAccesslevelDAL("0");
        }

        public DataTable ShowAllEmployeesDAL()
        {
            return ShowAllAccesslevelDAL("1");
        }

        public DataTable ShowAllSuppliersDAL()
        {
            return ShowAllAccesslevelDAL("2");
        }

        public DataTable ShowAllCustomersDAL()
        {
            return ShowAllAccesslevelDAL("3");
        }

        public DataTable ShowAllAccesslevelDAL(string accesslevel)
        {
            string query = "Select * from users where accesslevel = '"+accesslevel+"' ";
            return db.Search(query);
        }
    }
}
