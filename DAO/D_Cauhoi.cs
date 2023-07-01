using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;
namespace DAO
{
    public class D_Cauhoi
    {
        D_Data data = new D_Data();
        public DataTable select() => data.LayBangData("sp_SelectCauHoi");

        public void insert(SqlParameter[] pr) => data.NhieuPr("sp_InsertCauHoi", pr);

        public void update(SqlParameter[] pr) => data.NhieuPr("sp_UpdateCauHoi", pr);

        public void delete(SqlParameter pr) => data.MotPr("sp_DeleteCauHoi", pr);
    }
}
