using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Security.Cryptography.X509Certificates;

namespace DAO
{
    public class D_Bode
    {
        D_Data data = new D_Data();
        public DataTable select() => data.LayBangData("sp_SelectBoDe");
        public List<string> listA(SqlParameter[] pr) => data.ListData("sp_SelectA", pr);

        public List<string> listB(SqlParameter[] pr) => data.ListData("sp_SelectB", pr);

        public List<string> listC(SqlParameter[] pr) => data.ListData("sp_SelectC", pr);

        public void insert(SqlParameter[] pr) => data.NhieuPr("sp_InsertBoDe", pr);

        public void insertdethi(SqlParameter[] pr) => data.NhieuPr("sp_InsertDeThi", pr);

        public DataTable selectdethi(SqlParameter pr) => data.LayBangDataCoPr("sp_SelectDeThi", pr);

        public string topid() => data.LayMotData("sp_SelectTop");

        public string selectnoidung(SqlParameter pr) => data.LayMotDataCoPr("sp_SelectNoiDung", pr);

        public DataTable indethi(SqlParameter pr) => data.LayBangDataCoPr("sp_InDeThi", pr);

        public DataTable fillcombocautruc(SqlParameter[] pr) => data.LayBangDataCoNPr("sp_FillComboCauTruc", pr);
        
        public DataTable cautruc(SqlParameter pr) => data.LayBangDataCoPr("sp_CauTruc", pr);
    }
}
