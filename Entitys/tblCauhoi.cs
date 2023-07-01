using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entitys
{
    public class tblCauhoi
    {
        private string Ma;
        private string Mamonhoc;
        private string Mahedaotao;
        private string Maloai;
        private string Mucdocauhoi;
        private string Noidungcauhoi;
        private string Dapan;

        public tblCauhoi(string ma, string mamonhoc, string mahedaotao, string maloai, string mucdocauhoi, string noidungcauhoi, string dapan)
        {
            Ma = ma;
            Mamonhoc = mamonhoc;
            Mahedaotao = mahedaotao;
            Maloai = maloai;
            Mucdocauhoi = mucdocauhoi;
            Noidungcauhoi = noidungcauhoi;
            Dapan = dapan;
        }

        public string Ma1 { get => Ma; set => Ma = value; }
        public string Mamonhoc1 { get => Mamonhoc; set => Mamonhoc = value; }
        public string Mahedaotao1 { get => Mahedaotao; set => Mahedaotao = value; }
        public string Maloai1 { get => Maloai; set => Maloai = value; }
        public string Mucdocauhoi1 { get => Mucdocauhoi; set => Mucdocauhoi = value; }
        public string Noidungcauhoi1 { get => Noidungcauhoi; set => Noidungcauhoi = value; }
        public string Dapan1 { get => Dapan; set => Dapan = value; }
    }
}
