using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class dbConnectionData
    {
        public SqlConnection HamKetNoi()
        {
            SqlConnection conn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=QLNganHangCauHoi;Integrated Security=True");
            return conn;
        }
    }
}
