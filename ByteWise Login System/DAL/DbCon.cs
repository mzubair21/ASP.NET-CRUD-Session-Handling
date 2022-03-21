using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    class DbCon
    {
        SqlConnection con;
        public DbCon()
        {
            con = new SqlConnection(@"Data Source=Qureshi-PC;Initial Catalog=Authentication;Integrated Security=True");
        }

        public bool UDI(string query)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);

            bool check = (cmd.ExecuteNonQuery() > 0);
            con.Close();

            return check;
        }

        public DataTable Search(string query)
        {
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(query, con);

            DataTable dt = new DataTable();

            sda.Fill(dt);
            con.Close();

            return dt;
        }
    }
}
