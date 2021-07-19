using SRAD_System.DLL.DataSradTableAdapters;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace SRAD_System.BLL
{
    public class Student : Application
    {
        private string _name;
        private string _email;
        private string _address;
        private string _telNo;
        private int _IC;
        private bool _isdraft;
        private DateTime _SubmitDate;
        private int _ApplicationID;
        private int _SRADStaffID;
        private int _FacAddmissionStaffID;
        private int _AppEvaluationStatusID;
        public string Name { get => _name; set => _name = value; }
        public string type { get => "student"; }
        public string email { get => _email; set => _email = value; }
        public string address { get => _address; set => _address = value; }
        public string telNo { get => _telNo; set => _telNo = value; }
        public int IC { get => _IC; set => _IC = value; }
        public bool isdraft { get => _isdraft; set => _isdraft = value; }
        public DateTime SubmitDate { get => _SubmitDate; set => _SubmitDate = value; }
        public int ApplicationID { get => _ApplicationID; set => _ApplicationID = value; }
        public int SRADStaffID { get => _SRADStaffID; set => _SRADStaffID = value; }
        public int FacAddmissionStaffID { get => _FacAddmissionStaffID; set => _FacAddmissionStaffID = value; }
        public int AppEvaluationStatusID { get => _AppEvaluationStatusID; set => _AppEvaluationStatusID = value; }

        //constructor
        public Student() { }

        //destructor
         ~Student() { }

        public void AddApplication(string Name, string email, string address, string telNo, int IC, bool isdraft, DateTime SubmitDate, int ApplicationID, int SRADStaffID, int FacAddmissionStaffID, int AppEvaluationStatusID)
        {
            
            ApplicationTableAdapter app = new ApplicationTableAdapter();
            app.addApplication(address, email, Name, telNo, IC, isdraft, SubmitDate.ToString(), "student", ApplicationID, SRADStaffID, FacAddmissionStaffID, AppEvaluationStatusID);
            ProspectiveStudentApplicationTableAdapter stud = new ProspectiveStudentApplicationTableAdapter();
            AgentTableAdapter agent = new AgentTableAdapter();
            int value = (int)agent.GetData().Rows[agent.GetData().Count - 1][agent.GetData().AgentIDColumn.Ordinal];
            stud.InsertQuery("Undergraduate", ApplicationID, value + 1);
        }

        public bool retrieveApplication(int ID)
        {
            ApplicationTableAdapter app = new ApplicationTableAdapter();
            DataTable table = app.getApplicationBy(ID);
            if (table.Rows[0][(int)app.GetData().TypeColumn.Ordinal].Equals("agent"))
            {
                return false;
            }
            else if (table.Rows[0][(int)app.GetData().TypeColumn.Ordinal] == null)
            {
                return false;
            }
            else
            {
                this.Name = table.Rows[0][app.GetData().ApplicantnameColumn.Ordinal].ToString();
                this.email = table.Rows[0][app.GetData().ApplicantemailColumn.Ordinal].ToString();
                this.address = table.Rows[0][app.GetData().ApplicantaddressColumn.Ordinal].ToString();
                this.telNo = table.Rows[0][app.GetData().ApplicanttelnoColumn.Ordinal].ToString();
                this.IC = (int)table.Rows[0][app.GetData().IdColumn.Ordinal];
                this.isdraft = (bool)table.Rows[0][app.GetData().IsdraftColumn.Ordinal];
                this.SubmitDate = DateTime.Parse(table.Rows[0][app.GetData().SubmitdateColumn.Ordinal].ToString());
                this.ApplicationID = (int)table.Rows[0][app.GetData().ApplicationIDColumn.Ordinal];
                this.SRADStaffID = (int)table.Rows[0][app.GetData().SradStaffIDColumn.Ordinal];
                this.FacAddmissionStaffID = (int)table.Rows[0][app.GetData().FacultyAdmissionDepartmentStaffIDColumn.Ordinal];
                this.AppEvaluationStatusID = (int)table.Rows[0][app.GetData().ApplicationEvaluationStatusIDColumn.Ordinal];
                return true;
            }
        }
        public String AdmissionCategory(int id)
        {
            String category;
            ProspectiveStudentApplicationTableAdapter stud = new ProspectiveStudentApplicationTableAdapter();
            category = stud.getIntakeCategory(id).ToString();
            return category;
            
        }
    }
}