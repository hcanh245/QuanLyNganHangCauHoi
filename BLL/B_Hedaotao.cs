using DAO;
using Entitys;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BLL
{
    public class B_Hedaotao
    {
        D_Hedaotao dao = new D_Hedaotao();

        public void Select(DataGridView dgv) => dgv.DataSource = dao.select();

        public void Insert(tblMonhoc obj)
        {
            SqlParameter[] pr = new SqlParameter[2];
            SqlParameter pr0 = new SqlParameter("@Ma", SqlDbType.VarChar, 10) { Value = obj.Ma1 };
            SqlParameter pr1 = new SqlParameter("@Ten", SqlDbType.NVarChar, 50) { Value = obj.Ten1 };
            pr[0] = pr0;
            pr[1] = pr1;
            dao.insert(pr);
        }

        public void Update(tblMonhoc obj)
        {
            SqlParameter[] pr = new SqlParameter[2];
            SqlParameter pr0 = new SqlParameter("@Ma", SqlDbType.VarChar, 10) { Value = obj.Ma1 };
            SqlParameter pr1 = new SqlParameter("@Ten", SqlDbType.NVarChar, 50) { Value = obj.Ten1 };
            pr[0] = pr0;
            pr[1] = pr1;
            dao.update(pr);
        }

        public void Delete(string ma)
        {
            SqlParameter pr = new SqlParameter("@Ma", SqlDbType.VarChar, 10) { Value = ma };
            dao.delete(pr);
        }
    }
}
