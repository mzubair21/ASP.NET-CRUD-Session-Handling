using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AppProps;
using DAL;
namespace BLL
{
    public class UsersBLL
    {
       
            UsersDAL uDAL = new UsersDAL();

            public bool InsertUserBLL(users u)
            {
                return uDAL.InsertUserDAL(u);
            }

            //Update
            public bool UpdateAdminBLL(users u)
            {
                return uDAL.UpdateAdminDAL(u);
            }
            public bool UpdateCustomerBLL(users u)
            {
                return uDAL.UpdateCustomerDAL(u);
            }
            public bool UpdateEmployeeBLL(users u)
            {
                return uDAL.UpdateEmployeeDAL(u);
            }
            public bool UpdateSupplierBLL(users u)
            {
                return uDAL.UpdateSupplierDAL(u);
            }
            //Delete
            public bool DeleteUserBLL(users u)
            {
                return uDAL.DeleteUserDAL(u);
            }
            //select
            public DataTable SelectUserBLL(users u)
            {
                return uDAL.SelectUserDAL(u);
            }
            //Show all
            public DataTable ShowAllAdminsBLL()
            {
                return uDAL.ShowAllAdminsDAL();
            }

            public DataTable ShowAllCustomersBLL()
            {
                return uDAL.ShowAllCustomersDAL();
            }

            public DataTable ShowAllSuppliersBLL()
            {
                return uDAL.ShowAllSuppliersDAL();
            }

            public DataTable ShowAllEmployeesBLL()
            {
                return uDAL.ShowAllEmployeesDAL();
            }

            public DataTable AutheticateUserBLL(users u)
            {

                return uDAL.AutheticateUserDAL(u);
            }

        
    }
}
