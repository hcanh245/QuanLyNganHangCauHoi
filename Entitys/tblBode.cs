using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entitys
{
    public class tblBode
    {
        private string Ma;
        private string Mamonhoc;
        private string Mahedaotao;
        private string Maloai;
        private string Ngay;
        private string Lop;
        private int Sode;

        public tblBode(string ma, string mamonhoc, string mahedaotao, string maloai, string ngay, string lop, int sode)
        {
            Ma = ma;
            Mamonhoc = mamonhoc;
            Mahedaotao = mahedaotao;
            Maloai = maloai;
            Ngay = ngay;
            Lop = lop;
            Sode = sode;
        }

        public string Ma1 { get => Ma; set => Ma = value; }
        public string Mamonhoc1 { get => Mamonhoc; set => Mamonhoc = value; }
        public string Mahedaotao1 { get => Mahedaotao; set => Mahedaotao = value; }
        public string Maloai1 { get => Maloai; set => Maloai = value; }
        public string Ngay1 { get => Ngay; set => Ngay = value; }
        public string Lop1 { get => Lop; set => Lop = value; }
        public int Sode1 { get => Sode; set => Sode = value; }
    }
}
