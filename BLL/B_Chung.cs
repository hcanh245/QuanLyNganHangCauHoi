using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO;
using System.Windows.Forms;

namespace BLL
{
    public class B_Chung
    {
        D_Data data = new D_Data();
        public void FillComboBox(ComboBox cbo, string storename)
        {
            cbo.DataSource = data.LayBangData(storename);
            cbo.DisplayMember = data.LayBangData(storename).Columns[1].ColumnName;
            cbo.ValueMember = data.LayBangData(storename).Columns[0].ColumnName;
        }
    }
}
