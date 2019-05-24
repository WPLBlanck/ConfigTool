using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConfigTool.CommonClass
{
    class DataExport
    {
        OleDbConnection _odcConnection;
        OleDbCommand _oleDbCommand;
        public DataExport()
        {
        }
        public void InsertDatas(List<Study> LStudy, string fileName)
        {
            if (LStudy.Count == 0)
                return;
            string _connectionString;
            _connectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + fileName + ";" + "Jet OLEDB:Database Password=Pxray";
            _odcConnection = new OleDbConnection(_connectionString);
            _odcConnection.Open();
            foreach (Study study in LStudy)
            {
                string birthday = study.Birthday.ToString("yyyy-MM-dd");
                string registerDateTime = study.RegisterDateTime.ToString("yyyy-MM-dd HH:mm:ss");
                string checkDateTime = study.CheckDateTime.ToString("yyyy-MM-dd HH:mm:ss");
                string sql = string.Format("insert into Study(AccessNo,PatientID,PatientName,PatientSex,Birthday,PatientAge,PatientSize,Description,RegisterDateTime,CheckDateTime,Operator,[Diagnostics],BodyPart,Checked,Sent,Printed,Reported,Deleted,ImageCount) values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}','{13}','{14}','{15}','{16}','{17}','{18}')", study.AccessNo, study.PatientID, study.PatientName, study.PatientSex, birthday, study.PatientAge, study.PatientSize, study.Description,
                  registerDateTime, checkDateTime, study.Operator, study.Diagnostics, study.BodyPart, study.Checked.ToString(),
                  study.Sent.ToString(), study.Printed.ToString(), study.Reported.ToString(), study.Deleted.ToString(), study.ImageCount.ToString());

                _oleDbCommand = new OleDbCommand(sql, _odcConnection);
                _oleDbCommand.ExecuteNonQuery();
            }

            _odcConnection.Close();

        }

        public void DeleteDatas(string fileName)
        {
            string _connectionString;
            string sql = "Delete * from Study";
            _connectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + fileName + ";" + "Jet OLEDB:Database Password=Pxray";
            _odcConnection = new OleDbConnection(_connectionString);
            _odcConnection.Open();
            _oleDbCommand = new OleDbCommand(sql, _odcConnection);
            _oleDbCommand.ExecuteNonQuery();
            _odcConnection.Close();

        }

        public List<Study> ReadDataBase(string fileName)
        {
           
            List<Study> sList = new List<Study>();
            string _connectionString;
            string sql = "Select * from Study";
            _connectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + fileName + ";" + "Jet OLEDB:Database Password=Pxray";
            _odcConnection = new OleDbConnection(_connectionString);
            _odcConnection.Open();
            OleDbDataAdapter adapter = new OleDbDataAdapter(sql, _odcConnection);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            _odcConnection.Close();

            int rowCount = ds.Tables[0].Rows.Count;
            DataTable setTable = ds.Tables[0];
            if (rowCount > 0)
            {
                for (int i = 0; i < rowCount; i++)
                {
                    Study study = new Study();
                    study.AccessNo = setTable.Rows[i]["AccessNo"].ToString();
                    study.PatientID = setTable.Rows[i]["PatientID"].ToString();
                    study.PatientName = setTable.Rows[i]["PatientName"].ToString();
                    study.PatientSex = setTable.Rows[i]["PatientSex"].ToString();
                    study.Birthday = DateTime.Parse(setTable.Rows[i]["Birthday"].ToString());
                    study.PatientAge = setTable.Rows[i]["PatientAge"].ToString();
                    study.PatientSize = setTable.Rows[i]["PatientSize"].ToString();
                    study.Description = setTable.Rows[i]["Description"].ToString();
                    study.RegisterDateTime = DateTime.Parse(setTable.Rows[i]["RegisterDateTime"].ToString());
                    study.CheckDateTime = DateTime.Parse(setTable.Rows[i]["CheckDateTime"].ToString());
                    study.Operator = setTable.Rows[i]["Operator"].ToString();
                    study.Diagnostics = setTable.Rows[i]["Diagnostics"].ToString();
                    study.BodyPart = setTable.Rows[i]["BodyPart"].ToString();
                    study.Checked = int.Parse(setTable.Rows[i]["Checked"].ToString());
                    study.Sent = int.Parse(setTable.Rows[i]["Sent"].ToString());
                    study.Printed = int.Parse(setTable.Rows[i]["Printed"].ToString());
                    study.Reported = int.Parse(setTable.Rows[i]["Reported"].ToString());
                    study.Deleted = int.Parse(setTable.Rows[i]["Deleted"].ToString());
                    study.ImageCount = int.Parse(setTable.Rows[i]["ImageCount"].ToString());
                    study.IsSelected = false;
                    sList.Add(study);
                }
            }
            return sList;
        }
    }
}
