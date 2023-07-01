using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Entitys;
using DAO;

namespace BLL
{
    public class B_Cauhoi
    {
        D_Cauhoi dao = new D_Cauhoi();
        public void Select(DataGridView dgv) => dgv.DataSource = dao.select();

        public void Insert(tblCauhoi obj) => dao.insert(CrePr(obj));

        public void Update(tblCauhoi obj) => dao.update(CrePr(obj));

        public void Delete(string ma)
        {
            SqlParameter pr = new SqlParameter("@Ma", SqlDbType.VarChar, 10) { Value = ma };
            dao.delete(pr);
        }

        private SqlParameter[] CrePr(tblCauhoi obj)
        {
            SqlParameter[] pr = new SqlParameter[7];
            SqlParameter pr0 = new SqlParameter("@Ma", SqlDbType.VarChar, 10) { Value = obj.Ma1 };
            pr[0] = pr0;
            SqlParameter pr1 = new SqlParameter("@Mamonhoc", SqlDbType.VarChar, 10) { Value = obj.Mamonhoc1 };
            pr[1] = pr1;
            SqlParameter pr2 = new SqlParameter("@Mahedaotao", SqlDbType.VarChar, 10) { Value = obj.Mahedaotao1 };
            pr[2] = pr2;
            SqlParameter pr3 = new SqlParameter("@Maloai", SqlDbType.VarChar, 10) { Value = obj.Maloai1 };
            pr[3] = pr3;
            SqlParameter pr4 = new SqlParameter("@Mucdocauhoi", SqlDbType.Char, 1) { Value = obj.Mucdocauhoi1 };
            pr[4] = pr4;
            SqlParameter pr5 = new SqlParameter("@Noidungcauhoi", SqlDbType.NText) { Value = obj.Noidungcauhoi1 };
            pr[5] = pr5;
            SqlParameter pr6 = new SqlParameter("@Dapan", SqlDbType.NText) { Value = obj.Dapan1 };
            pr[6] = pr6;
            return pr;
        }
    }
}
