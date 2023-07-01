using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entitys
{
    public class tblMonhoc
    {
        private string Ma;
        private string Ten;

        public tblMonhoc(string ma, string ten)
        {
            Ma = ma;
            Ten = ten;
        }

        public string Ma1 { get => Ma; set => Ma = value; }
        public string Ten1 { get => Ten; set => Ten = value; }
    }
}
