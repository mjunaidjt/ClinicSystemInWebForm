using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicSystemInWebForm.Appointments
{
    public partial class AppointmentIndex : System.Web.UI.Page
    {
        private int app_ID=0;
        protected void Page_Load(object sender, EventArgs e)
        {
             
            GetAppoinment();
        }
         
        private void GetAppoinment()
        {
            ClinicManagementSystemDataContext dbcontext = new ClinicManagementSystemDataContext();

            AppointmentDataGrid.DataSource =from appointment in dbcontext.TBLAPPOINTMENTs
                                            join patient in dbcontext.TBLPATIENTs on appointment.appointment_PatientID equals patient.patient_ID
                                            join doctor in dbcontext.TBLDOCTORs on appointment.appointment_DoctorID equals doctor.doctor_ID
                                            select new
                                            {

                                                appointment.appoinment_ID,
                                                patient.patient_Name,
                                                patient.patient_BirthDate,
                                                doctor.doctor_Name,
                                                patient.patient_Phone,
                                                appointment.appointment_Date,
                                                appointment.appoinment_Details,
                                                appointment.appointment_Status

                                            };

            AppointmentDataGrid.DataBind();

        }

        protected void AppointmentDataGrid_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            app_ID = Convert.ToInt32(AppointmentDataGrid.SelectedDataKey["appoinment_ID"].ToString());

            //Session["SelectedID"] = patientid;

            Response.Redirect("~/Appointments/Edit.aspx?id=" + app_ID);

        }
    }
}