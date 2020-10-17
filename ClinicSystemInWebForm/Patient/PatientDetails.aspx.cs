using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicSystemInWebForm.Patient
{
    public partial class PatientDetails : System.Web.UI.Page
    {
        private int Id_OfPatient = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Id_OfPatient = int.Parse(Request.QueryString["id"]);
                GetSelectedPatient();
            }

            AppointmentPatientID.NavigateUrl = "~/Appointments/CreateAppointment.aspx?id=" + Request.QueryString["id"];
            AttendancePatientID.NavigateUrl = "~/Attendence/CreateAttendence.aspx?id="+Request.QueryString["id"];
        }

        

        private void GetSelectedPatient()
        {
           ClinicManagementSystemDataContext dbcontext = new ClinicManagementSystemDataContext();


            var selected_Patient = from sel_Patient in dbcontext.TBLPATIENTs
                                   where sel_Patient.patient_ID == Id_OfPatient
                                   select sel_Patient;

            SelectedPatientDetail.DataSource = selected_Patient;
            SelectedPatientDetail.DataBind();
        }


    }
}