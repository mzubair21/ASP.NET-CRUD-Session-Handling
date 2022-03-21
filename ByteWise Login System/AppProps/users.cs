using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppProps
{
    public class users
    {
        private string userid;
        private string accesslevel;

        private string email;
        private string password;


        private string fname;
        private string lname;
        private string address;

        /*Emp*/
        private string empscale;
        /*Supplier*/
        private string companyname;
        /*Admin*/
        private string admintype;
        /*Customer*/
        private string custmembership;

        public string Userid { get => userid; set => userid = value; }
        public string Accesslevel { get => accesslevel; set => accesslevel = value; }
        public string Email { get => email; set => email = value; }
        public string Password { get => password; set => password = value; }
        public string Fname { get => fname; set => fname = value; }
        public string Lname { get => lname; set => lname = value; }
        public string Address { get => address; set => address = value; }
        public string Empscale { get => empscale; set => empscale = value; }
        public string Companyname { get => companyname; set => companyname = value; }
        public string Admintype { get => admintype; set => admintype = value; }
        public string Custmembership { get => custmembership; set => custmembership = value; }
    }
}
