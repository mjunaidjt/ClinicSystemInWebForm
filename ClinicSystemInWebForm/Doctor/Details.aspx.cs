using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicSystemInWebForm.Doctor
{
    public partial class Details : System.Web.UI.Page
    {
        private int selectedDoctor;
        private ClinicManagementSystemDataContext dbcontext = new ClinicManagementSystemDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                selectedDoctor = int.Parse(Request.QueryString["id"]);
                
            }
            SelectedDoctorDetail.DataSource = dbcontext.TBLDOCTORs.Where(doc => doc.doctor_ID == selectedDoctor);
            SelectedDoctorDetail.DataBind(); //issue

            GetAppointmentofDoctor();
        }

        private void GetAppointmentofDoctor()
        {
            DrAppointmentGrid.DataSource = from appointment in dbcontext.TBLAPPOINTMENTs
                                           join patient in dbcontext.TBLPATIENTs on appointment.appointment_PatientID equals patient.patient_ID
                                           join doctor in dbcontext.TBLDOCTORs on appointment.appointment_DoctorID equals doctor.doctor_ID
                                           where appointment.appointment_DoctorID == selectedDoctor && appointment.appointment_Status == "Y"
                                           select new
                                             {

                                                 appointment.appoinment_ID,
                                                 patient.patient_Name,
                                                 doctor.doctor_Name,
                                                 patient.patient_Phone,
                                                 appointment.appointment_Date,
                                                 appointment.appoinment_Details,

                                             };

            DrAppointmentGrid.DataBind();

        }
    }
}