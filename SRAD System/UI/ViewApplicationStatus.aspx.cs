using SRAD_System.BLL;
using SRAD_System.DLL.DataSradTableAdapters;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SRAD_System.UI
{
    public partial class ViewApplicationStatus : System.Web.UI.Page
    {
        int cuser = 0;
        private ApplicationEvaluationStatus value = new ApplicationEvaluationStatus();
        Application person;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                cuser = int.Parse(Request.QueryString["cuser"]);
            }
            catch (Exception ex)
            {

            }
        }

        protected void Search_Click1(object sender, EventArgs e)
        {
            creator c = new creator();
            //ApplicationEvaluationStatus eva = new ApplicationEvaluationStatus();
            person = c.FactoryMethod(int.Parse(SearchBox.Text));
            if(person != null)
            {
                person.retrieveApplication(int.Parse(SearchBox.Text));
                NameTextBox.Text = person.Name;
                EmailTextBox.Text = person.email;
                SessionTextBox.Text = "2020/2021";
                ProgrammeTextBox.Text = person.AdmissionCategory(int.Parse(SearchBox.Text));
                value.setApplication(person.ApplicationID);
                int fac = value.getFacReviewed();
                int stat = value.getStatus();
                if (!person.SubmitDate.ToString().Equals("") && !person.isdraft && fac != 0 && stat == 0)
                {
                    AppInitiated.Checked = true;
                    AppSubmited.Checked = true;
                    if(cuser == 1)
                    {
                        AppEva.Enabled = true;
                        UpdateStatus.Visible = true;
                    }
                }
                else if (!person.SubmitDate.ToString().Equals("") && person.isdraft == true && stat == 0)
                {
                    AppInitiated.Checked = true;
                }
                else if (!person.SubmitDate.ToString().Equals("") && !person.isdraft == true && fac == 0 && stat == 0)
                {
                    AppInitiated.Checked = true;
                    AppSubmited.Checked = true;
                    AppReviewed.Checked = true;
                    AppStat.Checked = true; 
                    if (cuser == 1)
                    {
                        AppEva.Enabled = true;
                        UpdateStatus.Visible = true;
                    }
                }
                else if (!person.SubmitDate.ToString().Equals("") && !person.isdraft == true && fac == 0 && stat == 2)
                {
                    AppInitiated.Checked = true;
                    AppSubmited.Checked = true;
                    AppReviewed.Checked = true;
                    AppStat.Checked = true;
                    AppEva.Checked = true;
                }
                
            }
            else
            {
                Response.Write("<script>alert('data is not found');</script>");
            }


        }

        protected void UpdateStatus_Click(object sender, EventArgs e)
        {
            if(value != null && AppEva.Checked == true)
            {
                //UPDATE
                value.storeSradStatus(true);
                ApplicationEvaluationStatusTableAdapter aesta = new ApplicationEvaluationStatusTableAdapter();
                aesta.UpdateSRADEvaluationStatus(true, person.ApplicationID);
            }
        }
    }
}