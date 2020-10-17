using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicSystemInWebForm
{
    public partial class AdminMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Usr_Name"] == null || Session["Usr_Password"] == null)
            {
                Response.Write(Session["Usr_Name"] + " "+ Session["Usr_Password"]);
                Response.Redirect("~/Accounts/LoginPage.aspx");
              
            }

            switch (Session["Usr_Role"])
            {
                case "Admin":
                    PatientLink.Visible = true;
                    AppointmentLink.Visible = true ;
                    DoctorsLink.Visible = true;
                    UserLink.Visible = true;
                    AppoinmentReportLink.Visible = true;
                    AttendenceReportLink.Visible = true;
                    //ReportsLink.Visible = true;
                    break;
                case "Doctor":
                    ProfileLink.Visible =true; 
                    //PatientLink.Visible = true;
                    break;
                case "Patient":
                    ProfileLink.Visible = true;
                    break;
                default:
                    // code block
                    break;
            }



            userprofilehyperlink.Text = "<i class='fa fa-user fa-lg'> </i> " + Session["Usr_Name"].ToString();
        }

        protected void UserDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}