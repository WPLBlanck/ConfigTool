using ConfigTool.CommonClass;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;


namespace TableControl.CommonClass
{
    class LanguageSwitch
    {
        private string file;
        private string FilePath;
        private string DatabasePath;
        string DirFile;
        string DrImageFile;
        DataExport dataExport = new DataExport();
        List<Study> sList = new List<Study>();

        public LanguageSwitch()
        {
            file = System.Environment.CurrentDirectory;
            FilePath = file + @"\Languages";
            DatabasePath = file + @"\DataBase";
            DrImageFile = file + @"\DrImage";
        }

        //复制并重命名文件
        public int CopyRenameFile(string Language)
        {
            if (File.Exists(FilePath + @"\UserStrings_en.xaml") && File.Exists(DatabasePath + @"\DRDB_en.mdb") && File.Exists(FilePath + @"\UserStrings_cn.xaml") && File.Exists(DatabasePath + @"\DRDB_cn.mdb") && File.Exists(DatabasePath + @"\DRDB_fcn.mdb"))
            {
                switch (Language)
                {
                    case "0":
                        File.Copy(FilePath + @"\UserStrings_cn.xaml", FilePath + @"\UserStrings.xaml", true);                  
                        sList = dataExport.ReadDataBase(DatabasePath + @"\DRDB.mdb");                        
                         File.Copy(DatabasePath + @"\DRDB_cn.mdb", DatabasePath + @"\DRDB.mdb", true);
                        dataExport.InsertDatas(sList, DatabasePath + @"\DRDB.mdb");
                        break;
                    case "1":
                        File.Copy(FilePath + @"\UserStrings_fcn.xaml", FilePath + @"\UserStrings.xaml", true);
                       sList = dataExport.ReadDataBase(DatabasePath + @"\DRDB.mdb");
                        File.Copy(DatabasePath + @"\DRDB_fcn.mdb", DatabasePath + @"\DRDB.mdb", true);
                        dataExport.InsertDatas(sList, DatabasePath + @"\DRDB.mdb");
                        break;
                    case "2":
                        File.Copy(FilePath + @"\UserStrings_en.xaml", FilePath + @"\UserStrings.xaml", true);
                        sList = dataExport.ReadDataBase(DatabasePath + @"\DRDB.mdb");
                        File.Copy(DatabasePath + @"\DRDB_en.mdb", DatabasePath + @"\DRDB.mdb", true);
                        dataExport.InsertDatas(sList, DatabasePath + @"\DRDB.mdb");
                        break;
                    default:
                        break;
                }
            }
            else
            {
                MessageBox.Show("File missing");
                return -1;
            }
            return 1;
        }

        //public static void CopyDir(string fromDir, string toDir)
        //{
        //    if (!Directory.Exists(fromDir))
        //        return;
        //    if (!Directory.Exists(toDir))
        //    {
        //        Directory.CreateDirectory(toDir);
        //    }
        //    string[] files = Directory.GetFiles(fromDir);
        //    foreach (string formFileName in files)
        //    {
        //        string fileName = Path.GetFileName(formFileName);
        //        string toFileName = Path.Combine(toDir, fileName);
        //        File.Copy(formFileName, toFileName);
        //    }
        //    string[] fromDirs = Directory.GetDirectories(fromDir);
        //    foreach (string fromDirName in fromDirs)
        //    {
        //        string dirName = Path.GetFileName(fromDirName);
        //        string toDirName = Path.Combine(toDir, dirName);
        //        CopyDir(fromDirName, toDirName);
        //    }
        //}

        //public static void MoveDir(string fromDir, string toDir)
        //{
        //    if (!Directory.Exists(fromDir))
        //        return;

        //    CopyDir(fromDir, toDir);
        //    Directory.Delete(fromDir, true);
        //}
    }
}
