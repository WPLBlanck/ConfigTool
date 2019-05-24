using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace TableControl.CommonClass
{
    class OperateINI
    {
        [DllImport("kernel32")] // 写入配置文件的接口
        private static extern long WritePrivateProfileString(
       string section, string key, string val, string filePath);
        [DllImport("kernel32")] // 读取配置文件的接口
        private static extern int GetPrivateProfileString(
        string section, string key, string def,
        StringBuilder retVal, int size, string filePath);


        //读取ini文件
        public string ReadINIparameters(string section, string key, string filePath)
        {
            StringBuilder sb = new StringBuilder(255);
            GetPrivateProfileString(section,key,"",sb,255,filePath);
            return sb.ToString();
        }
        //修改ini文件
        public void WriteINIparameters(string section, string key, string val, string filePath)
        {
            WritePrivateProfileString(section,key,val,filePath);
        }
    }
}
