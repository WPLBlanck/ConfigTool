using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConfigTool.CommonClass
{
    class Study
    {
        public bool IsSelected { set; get; }
        public string AccessNo { set; get; }
        public string PatientID { set; get; }
        public string PatientName { set; get; }
        public string PatientSex { set; get; }
        public DateTime Birthday { set; get; }
        public string PatientAge { set; get; }
        public string PatientSize { set; get; }
        public string Description { set; get; }
        public DateTime RegisterDateTime { set; get; }
        public DateTime CheckDateTime { set; get; }
        public string Operator { set; get; }
        public string Diagnostics { set; get; }
        public string BodyPart { set; get; }
        public int Checked { set; get; }
        public int Sent { set; get; }
        public int Printed { set; get; }
        public int Reported { set; get; }
        public int Deleted { set; get; }
        public int ImageCount { set; get; }
    }
}
