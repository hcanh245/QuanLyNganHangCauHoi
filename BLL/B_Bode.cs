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
using System.Collections;

namespace BLL
{
    public class B_Bode
    {
        D_Bode dao = new D_Bode();
        public void Select(DataGridView dgv) => dgv.DataSource = dao.select();
        public void Insert(tblBode obj)
        {
            SqlParameter[] pr = new SqlParameter[6];
            SqlParameter pr0 = new SqlParameter("@Mamonhoc", SqlDbType.VarChar, 10) { Value = obj.Mamonhoc1 };
            pr[0] = pr0;
            SqlParameter pr1 = new SqlParameter("@Mahedaotao", SqlDbType.VarChar, 10) { Value = obj.Mahedaotao1 };
            pr[1] = pr1;
            SqlParameter pr2 = new SqlParameter("@Maloai", SqlDbType.VarChar, 10) { Value = obj.Maloai1 };
            pr[2] = pr2;
            SqlParameter pr3 = new SqlParameter("@Ngay", SqlDbType.Date) { Value = obj.Ngay1 };
            pr[3] = pr3;
            SqlParameter pr4 = new SqlParameter("@Lop", SqlDbType.NVarChar, 50) { Value = obj.Lop1 };
            pr[4] = pr4;
            SqlParameter pr5 = new SqlParameter("@Sode", SqlDbType.Int) { Value = obj.Sode1 };
            pr[5] = pr5;
            dao.insert(pr);
        }

        public void InsertDeThi(string made, string mabo, string noidung)
        {
            SqlParameter[] pr = new SqlParameter[3];
            SqlParameter pr0 = new SqlParameter("@Ma", SqlDbType.VarChar, 10) { Value = made };
            pr[0] = pr0;
            SqlParameter pr1 = new SqlParameter("@Mabode", SqlDbType.Int) { Value = mabo };
            pr[1] = pr1;
            SqlParameter pr2 = new SqlParameter("@Noidungdethi", SqlDbType.NText) { Value = noidung };
            pr[2] = pr2;
            dao.insertdethi(pr);
        }

        public List<string> ListA(tblBode obj) => dao.listA(CrePr(obj));

        public List<string> ListB(tblBode obj) => dao.listB(CrePr(obj));

        public List<string> ListC(tblBode obj) => dao.listC(CrePr(obj));

        public string TopId() => (int.Parse(dao.topid()) + 1).ToString();

        public void SelectDeThi(DataGridView dgv, string ma)
        {
            SqlParameter pr = new SqlParameter("@Ma", SqlDbType.Int) { Value = ma };
            dgv.DataSource = dao.selectdethi(pr);
        }

        public string SelectNoiDung(string ma) => dao.selectnoidung(CrePrID(ma));

        private SqlParameter CrePrID(string ma)
        {
            SqlParameter pr = new SqlParameter("@Ma", SqlDbType.VarChar, 10) { Value = ma };
            return pr;
        }

        private SqlParameter[] CrePr(tblBode obj)
        {
            SqlParameter[] pr = new SqlParameter[3];
            SqlParameter pr0 = new SqlParameter("@Mamonhoc", SqlDbType.VarChar, 10) { Value = obj.Mamonhoc1 };
            pr[0] = pr0;
            SqlParameter pr1 = new SqlParameter("@Mahedaotao", SqlDbType.VarChar, 10) { Value = obj.Mahedaotao1 };
            pr[1] = pr1;
            SqlParameter pr2 = new SqlParameter("@Maloai", SqlDbType.VarChar, 10) { Value = obj.Maloai1 };
            pr[2] = pr2;
            return pr;
        }

        public DataTable InDeThi(string ma) => dao.indethi(CrePrID(ma));

        public void FillComboCauTruc(ComboBox cbo, string storename, string mamonhoc, string mahedaotao)
        {
            SqlParameter[] pr = new SqlParameter[2];
            SqlParameter pr0 = new SqlParameter("@Mamonhoc", SqlDbType.VarChar, 10) { Value = mamonhoc };
            pr[0] = pr0;
            SqlParameter pr1 = new SqlParameter("@Mahedaotao", SqlDbType.VarChar, 10) { Value = mahedaotao };
            pr[1] = pr1;
            DataTable dt = dao.fillcombocautruc(pr);
            cbo.DataSource = dt;
            cbo.DisplayMember = dt.Columns[1].ColumnName;
            cbo.ValueMember = dt.Columns[0].ColumnName;
        }

        public DataTable CauTruc(string macautruc) => dao.cautruc(CrePrID(macautruc));
    }
}
