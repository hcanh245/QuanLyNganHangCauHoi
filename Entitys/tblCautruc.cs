using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entitys
{
    public class tblCautruc
    {
        private string Ma;
        private string Ten;
        private string Mamonhoc;
        private string Mahedaotao;
        private string SocauA;
        private string DiemA;
        private string SocauB;
        private string DiemB;
        private string SocauC;
        private string DiemC;

        public tblCautruc(string ma, string ten, string mamonhoc, string mahedaotao, string socauA, string diemA, string socauB, string diemB, string socauC, string diemC)
        {
            Ma = ma;
            Ten = ten;
            Mamonhoc = mamonhoc;
            Mahedaotao = mahedaotao;
            SocauA = socauA;
            DiemA = diemA;
            SocauB = socauB;
            DiemB = diemB;
            SocauC = socauC;
            DiemC = diemC;
        }

        public string Ma1 { get => Ma; set => Ma = value; }
        public string Ten1 { get => Ten; set => Ten = value; }
        public string Mamonhoc1 { get => Mamonhoc; set => Mamonhoc = value; }
        public string Mahedaotao1 { get => Mahedaotao; set => Mahedaotao = value; }
        public string SocauA1 { get => SocauA; set => SocauA = value; }
        public string DiemA1 { get => DiemA; set => DiemA = value; }
        public string SocauB1 { get => SocauB; set => SocauB = value; }
        public string DiemB1 { get => DiemB; set => DiemB = value; }
        public string SocauC1 { get => SocauC; set => SocauC = value; }
        public string DiemC1 { get => DiemC; set => DiemC = value; }
    }
}
