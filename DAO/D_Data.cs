using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO
{
    public class D_Data
    {
        private dbConnectionData connData = new dbConnectionData();
        public DataTable LayBangData(string storename)
        {
            DataTable dt = new DataTable();
            using (SqlConnection conn = connData.HamKetNoi())
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand(storename, conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                    {
                        adapter.Fill(dt);
                    } 
                }
            }
            return dt;
        }

        public DataTable LayBangDataCoPr(string storename, SqlParameter pr)
        {
            DataTable dt = new DataTable();
            using (SqlConnection conn = connData.HamKetNoi())
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand(storename, conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add(pr);
                    using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                    {
                        adapter.Fill(dt);
                    }
                }
            }
            return dt;
        }

        public DataTable LayBangDataCoNPr(string storename, SqlParameter[] pr)
        {
            DataTable dt = new DataTable();
            using (SqlConnection conn = connData.HamKetNoi())
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand(storename, conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    foreach (SqlParameter para in pr)
                        cmd.Parameters.Add(para);
                    using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                    {
                        adapter.Fill(dt);
                    }
                }
            }
            return dt;
        }

        public string LayMotData(string storename)
        {
            string id = "";
            using (SqlConnection conn = connData.HamKetNoi())
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand(storename, conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    if (cmd.ExecuteScalar() != null)
                        id = cmd.ExecuteScalar().ToString();
                    if (id == "")
                        id = "0";
                }
            }
            return id;
        }

        public string LayMotDataCoPr(string storename, SqlParameter pr)
        {
            string id = "";
            using (SqlConnection conn = connData.HamKetNoi())
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand(storename, conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add(pr);
                    if (cmd.ExecuteScalar() != null)
                        id = cmd.ExecuteScalar().ToString();
                    if (id == "")
                        id = "0";
                }
            }
            return id;
        }

        public void MotPr(string storename, SqlParameter pr)
        {
            using (SqlConnection conn = connData.HamKetNoi())
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand(storename, conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add(pr);
                    cmd.ExecuteNonQuery();
                }
            }
        }

        public void NhieuPr(string storename, SqlParameter[] pr)
        {
            using (SqlConnection conn = connData.HamKetNoi())
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand(storename, conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    foreach (SqlParameter para in pr)
                        cmd.Parameters.Add(para);
                    cmd.ExecuteNonQuery();
                }
            }
        }

        public List<string> ListData(string storename, SqlParameter[] pr)
        {
            List<string> list = new List<string>();
            DataTable dt = new DataTable();
            using (SqlConnection conn = connData.HamKetNoi())
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand(storename, conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    foreach (SqlParameter para in pr)
                        cmd.Parameters.Add(para);
                    using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                    {
                        adapter.Fill(dt);
                    }
                }
            }
            list = dt.AsEnumerable().Select(n => n.Field<string>(0)).ToList();
            return list;
        }
    }
}
