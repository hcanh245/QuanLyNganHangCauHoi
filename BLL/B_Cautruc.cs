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
    public class B_Cautruc
    {
        D_CauTruc dao = new D_CauTruc();
        public void Select(DataGridView dgv) => dgv.DataSource = dao.select();

        public void Insert(tblCautruc obj) => dao.insert(CrePr(obj));

        public void Update(tblCautruc obj) => dao.update(CrePr(obj));

        public void Delete(string ma)
        {
            SqlParameter pr = new SqlParameter("@Ma", SqlDbType.VarChar, 10) { Value = ma };
            dao.delete(pr);
        }

        private SqlParameter[] CrePr(tblCautruc obj)
        {
            SqlParameter[] pr = new SqlParameter[10];
            SqlParameter pr0 = new SqlParameter("@Ma", SqlDbType.VarChar, 10) { Value = obj.Ma1 };
            pr[0] = pr0;
            SqlParameter pr1 = new SqlParameter("@Ten", SqlDbType.NVarChar, 50) { Value = obj.Ten1 };
            pr[1] = pr1;
            SqlParameter pr2 = new SqlParameter("@Mamonhoc", SqlDbType.VarChar, 10) { Value = obj.Mamonhoc1 };
            pr[2] = pr2;
            SqlParameter pr3 = new SqlParameter("@Mahedaotao", SqlDbType.VarChar, 10) { Value = obj.Mahedaotao1 };
            pr[3] = pr3;
            SqlParameter pr4 = new SqlParameter("@SocauA", SqlDbType.VarChar, 10) { Value = obj.SocauA1 };
            pr[4] = pr4;
            SqlParameter pr5 = new SqlParameter("@DiemA", SqlDbType.VarChar, 10) { Value = obj.DiemA1 };
            pr[5] = pr5;
            SqlParameter pr6 = new SqlParameter("@SocauB", SqlDbType.VarChar, 10) { Value = obj.SocauB1 };
            pr[6] = pr6;
            SqlParameter pr7 = new SqlParameter("@DiemB", SqlDbType.VarChar, 10) { Value = obj.DiemB1 };
            pr[7] = pr7;
            SqlParameter pr8 = new SqlParameter("@SocauC", SqlDbType.VarChar, 10) { Value = obj.SocauC1 };
            pr[8] = pr8;
            SqlParameter pr9 = new SqlParameter("@DiemC", SqlDbType.VarChar, 10) { Value = obj.DiemC1 };
            pr[9] = pr9;
            return pr;
        }
    }
}
