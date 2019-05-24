using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using TableControl.CommonClass;

namespace TableControl
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window
    {
        OperateXAML Oxaml = new OperateXAML();
        OperateINI Oini = new OperateINI();
        LanguageSwitch Ls = new LanguageSwitch();
        ChangeFontSize Cfs = new ChangeFontSize();

        public MainWindow()
        {
            //InitializeComponent();


        }

        private void ReadSystemConfig()
        {
            string xmlfile = file + @"\HVGDrivers\HvgDriverConf.ini";
            HospitalName.Text = Oxaml.Readxaml("HospitalName");
            DepartmentName.Text = Oxaml.Readxaml("DepartmentName");
            if (!File.Exists(xmlfile))
                MessageBox.Show("file missing");
            HVGPortNumber.Text = Oini.ReadINIparameters("PortConfig", "PortNumber", xmlfile);
            if (Oxaml.Readxaml("TriggerMode") == "AED")
                TriggerMode.SelectedIndex = 1;
            else if (Oxaml.Readxaml("TriggerModer") == "HST")
                TriggerMode.SelectedIndex = 2;
            else
                TriggerMode.SelectedIndex = 0;
            if (Oxaml.Readxaml("HVGType") == "Remedy")
                HVGType.SelectedIndex = 1;
            else
                HVGType.SelectedIndex = 0;
            if (Oxaml.Readxaml("GridRemove") == "Enable")
                GridRemove.SelectedIndex = 0;
            else
                GridRemove.SelectedIndex = 1;
        }

        private void SysConfigModifyButton(object sender, RoutedEventArgs e)
        {
            string HVGfile = file + @"\HVGDrivers\HvgDriverConf.ini";
            Oxaml.Modifyxaml("HospitalName", HospitalName.Text);
            Oxaml.Modifyxaml("DepartmentName", DepartmentName.Text);
            if (TriggerMode.SelectedIndex == 1)
                Oxaml.Modifyxaml("TriggerMode", "AED");
            else if (TriggerMode.SelectedIndex == 2)
                Oxaml.Modifyxaml("TriggerMode", "HST");
            else
                Oxaml.Modifyxaml("TriggerMode", "TEST");
            if (HVGType.SelectedIndex == 1)
                Oxaml.Modifyxaml("HVGType", "Remedy");
            else
                Oxaml.Modifyxaml("HVGType", "TEST");
            Oini.WriteINIparameters("PortConfig", "PortNumber", HVGPortNumber.Text, HVGfile);
            if (GridRemove.SelectedIndex == 0)
                Oxaml.Modifyxaml("GridRemove", "Enable");
            else
                Oxaml.Modifyxaml("GridRemove", "Disable");
            if(Ls.CopyRenameFile(Language.SelectedIndex.ToString())==-1)
            {
                return;
            }
            if(Cfs.CopyRenameFile(Font_Size.SelectedIndex.ToString())==-1)
            {
                return;
            }
            MessageBox.Show("success");
        }

        private void ReadPrintConfig()
        {
            string PrintFile = file + @"\NetSdk\DcmNetCfg.ini";
            if (!File.Exists(PrintFile))
            {
                MessageBox.Show("file missing");
                return;
            }
            if (Oxaml.Readxaml("PrintType") == "Dicom")
                PrintType.SelectedIndex = 1;
            else
                PrintType.SelectedIndex = 0;
            PrintAeTitle.Text = Oini.ReadINIparameters("DicomPrinter", "Aetitle", PrintFile);
            PrintHostName.Text = Oini.ReadINIparameters("DicomPrinter", "Hostname", PrintFile);
            PrintPort.Text = Oini.ReadINIparameters("DicomPrinter", "Port", PrintFile);
            if (Oxaml.Readxaml("PrintFilmSize") == "8INX10IN")
                PrintFilmSize.SelectedIndex = 0;
            else if (Oxaml.Readxaml("PrintFilmSize") == "10INX12IN")
                PrintFilmSize.SelectedIndex = 1;
            else if (Oxaml.Readxaml("PrintFilmSize") == "14INX17IN")
                PrintFilmSize.SelectedIndex = 2;
            else if (Oxaml.Readxaml("PrintFilmSize") == "17INX17IN")
                PrintFilmSize.SelectedIndex = 3;
            else
                PrintFilmSize.SelectedIndex = 4;
            if (Oxaml.Readxaml("PrintMediumType") == "BLUE FILM")
                PrintMediumType.SelectedIndex = 0;
            else
                PrintMediumType.SelectedIndex = 1;
            if (Oxaml.Readxaml("PrintOrientation") == "portrait")
                PrintOrientation.SelectedIndex = 0;
            else
                PrintOrientation.SelectedIndex = 1;
        }

        private void PrintConfigModifyButton(object sender, RoutedEventArgs e)
        {
            string PrintFile = file + @"\NetSdk\DcmNetCfg.ini";
            if (PrintType.SelectedIndex == 0)
                Oxaml.Modifyxaml("PrintType", "Local");
            else
                Oxaml.Modifyxaml("PrintType", "Dicom");
            Oini.WriteINIparameters("DicomPrinter", "Aetitle", PrintAeTitle.Text, PrintFile);
            Oini.WriteINIparameters("DicomPrinter", "Hostname", PrintHostName.Text, PrintFile);
            Oini.WriteINIparameters("DicomPrinter", "Port", PrintPort.Text, PrintFile);
            if (PrintFilmSize.SelectedIndex == 0)
                Oxaml.Modifyxaml("PrintFilmSize", "8INX10IN");
            else if (PrintFilmSize.SelectedIndex == 1)
                Oxaml.Modifyxaml("PrintFilmSize", "10INX12IN");
            else if (PrintFilmSize.SelectedIndex == 2)
                Oxaml.Modifyxaml("PrintFilmSize", "14INX17IN");
            else if (PrintFilmSize.SelectedIndex == 3)
                Oxaml.Modifyxaml("PrintFilmSize", "17INX17IN");
            else
                Oxaml.Modifyxaml("PrintFilmSize","A4");
            if (PrintMediumType.SelectedIndex == 0)
                Oxaml.Modifyxaml("PrintMediumType","BLUE FILM");
            else
                Oxaml.Modifyxaml("PrintMediumType","CLEAR FILM");
            if (PrintOrientation.SelectedIndex == 0)
                Oxaml.Modifyxaml("PrintOrientation", "portrait");
            else
                Oxaml.Modifyxaml("PrintOrientation", "landscape");
            MessageBox.Show("success");
        }

        private void ReadPacsConfig()
        {
            string PacsFile = file + @"\NetSdk\DcmNetCfg.ini";
            PacsAeTitle.Text = Oini.ReadINIparameters("DicomStore", "Aetitle", PacsFile);
            PacsHostName.Text = Oini.ReadINIparameters("DicomStore", "Hostname", PacsFile);
            PacsPort.Text = Oini.ReadINIparameters("DicomStore", "Port", PacsFile);
            if (Oxaml.Readxaml("PacsAutoSend") == "on")
                PacsAutoSend.SelectedIndex = 0;
            else
                PacsAutoSend.SelectedIndex = 1;
        }

        private void PacsConfigModifyButton(object sender, RoutedEventArgs e)
        {
            string PacsFile = file + @"\NetSdk\DcmNetCfg.ini";
            Oini.WriteINIparameters("DicomStore", "Aetitle", PacsAeTitle.Text, PacsFile);
            Oini.WriteINIparameters("DicomStore", "Hostname", PacsHostName.Text, PacsFile);
            Oini.WriteINIparameters("DicomStore", "Port", PacsPort.Text, PacsFile);
            if (PacsAutoSend.SelectedIndex == 0)
                Oxaml.Modifyxaml("PacsAutoSend", "on");
            else
                Oxaml.Modifyxaml("PacsAutoSend", "off");
            MessageBox.Show("success");
        }

        private void Close(object sender, RoutedEventArgs e)
        {
            this.Close();
        }
    }
}
