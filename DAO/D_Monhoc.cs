﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class D_Monhoc
    {
        D_Data data = new D_Data();
        public DataTable select() => data.LayBangData("sp_SelectMonHoc");

        public void insert(SqlParameter[] pr) => data.NhieuPr("sp_InsertMonHoc", pr);

        public void update(SqlParameter[] pr) => data.NhieuPr("sp_UpdateMonHoc", pr);

        public void delete(SqlParameter pr) => data.MotPr("sp_DeleteMonHoc", pr);
    }
}
