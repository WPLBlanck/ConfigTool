using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace TableControl.CommonClass
{
    class ChangeFontSize
    {
        private string file;
        private string FilePath;


        public ChangeFontSize()
        {
            file = System.Environment.CurrentDirectory;
            FilePath = file + @"\FontSize";
        }


        //复制并重命名文件
        public int CopyRenameFile(string Language)
        {
            if (File.Exists(FilePath + @"\UserFontSize_1920x1080_100%.xaml") && File.Exists(FilePath + @"\UserFontSize_1920x1080_125%.xaml") && File.Exists(FilePath + @"\UserFontSize_1360x768.xaml"))
            {
                switch (Language)
                {
                    case "0":
                        File.Copy(FilePath + @"\UserFontSize_1920x1080_100%.xaml", FilePath + @"\UserFontSize.xaml", true);
                        break;
                    case "1":
                        File.Copy(FilePath + @"\UserFontSize_1920x1080_125%.xaml", FilePath + @"\UserFontSize.xaml", true);
                        break;
                    case "2":
                        File.Copy(FilePath + @"\UserFontSize_1920x1080_150%.xaml", FilePath + @"\UserFontSize.xaml", true);
                        break;
                    case "3":
                        File.Copy(FilePath + @"\UserFontSize_1360x768.xaml", FilePath + @"\UserFontSize.xaml", true);
                        break;
                    default:
                        break;
                }
            }
            else
            {
                MessageBox.Show("file missing");
                return -1;
            }
            return 1;
        }
    }
}
