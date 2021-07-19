using SRAD_System.BLL;
using SRAD_System.DLL.DataSradTableAdapters;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SRAD_System.UI.Registration
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string fullname;
        int ic;
        string address;
        string telNo;
        string Email;
        string type = "student";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            fullname = Full_Name.Text;
            ic = int.Parse(C_ID.Text);
            address = _Address.Text + Post_code.Text + Country_Of_Birth.Text;
            telNo = Phone_Number.Text;
            Email = E_mail.Text;
            ApplicationTableAdapter app = new ApplicationTableAdapter();
            int value = (int)app.GetData().Rows[app.GetData().Count - 1][app.GetData().ApplicationIDColumn.Ordinal];
            int eval = (int)app.GetData().Rows[app.GetData().Count - 1][app.GetData().ApplicationEvaluationStatusIDColumn.Ordinal];
            int fac = (int)app.GetData().Rows[app.GetData().Count - 1][app.GetData().FacultyAdmissionDepartmentStaffIDColumn.Ordinal];
            Student studt = new Student();
            SRADStaff staff = new SRADStaff();
            staff.setSRADStaff(studt);
            staff.AddApplicant(fullname, Email, address, telNo, ic, false, DateTime.Now, value + 1, fac, eval);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}