using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Xml;

namespace TableControl.CommonClass
{
    class OperateXAML
    {
        private XmlDocument xml;
        private XmlNodeList xmlNodeList;
        private string xamlFile;
        public OperateXAML()
        {
            string FilePath = System.Environment.CurrentDirectory;
            xamlFile = FilePath + @"\ConfigFiles\SysConfig.xaml";
            if (!File.Exists(xamlFile))
            {
                MessageBox.Show("Files missing");
                return;
            }
        }

        //连接xml文件
        public void OpenXmlFile()
        {
            xml = new XmlDocument();
            if (!File.Exists(xamlFile))
            {
                File.Create(xamlFile);
            }
            xml.Load(xamlFile);
            XmlNamespaceManager xmlNamespaceManager = new XmlNamespaceManager(xml.NameTable);
            xmlNamespaceManager.AddNamespace("x", "http://schemas.micorsoft.com/winfx/2006/xaml");
            xmlNamespaceManager.AddNamespace("sys", "clr-namespace:System;assembly=mscorlib");
            xmlNamespaceManager.AddNamespace("Local", "clr-namespace:Workstation.ConfigFiles");
        }

        //读取配置
        public string Readxaml(string Key)
        {
            string s = "";
            OpenXmlFile();
            xmlNodeList = xml.DocumentElement.ChildNodes;
            foreach (XmlNode childXmlNode in xmlNodeList)
            {
                if (childXmlNode.Name != "s:String")
                    continue;
                if (childXmlNode.Attributes["x:Key"].Value == Key)
                {
                    s = childXmlNode.InnerText;
                    return s;
                }

            }
            return s;
        }

        //修改配置
        public void Modifyxaml(string Key, string Value)
        {
            OpenXmlFile();

            xmlNodeList = xml.DocumentElement.ChildNodes;
            foreach (XmlNode childXmlNode in xmlNodeList)
            {
                if (childXmlNode.Name != "s:String")
                    continue;
                if (childXmlNode.Attributes["x:Key"].Value == Key)
                {
                    childXmlNode.InnerText = Value;
                    xml.Save(xamlFile);
                    return;
                }
            }
        }
    }
}
