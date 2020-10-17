using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicSystemInWebForm.Reports
{
    public partial class AppointmentReport : System.Web.UI.Page
    {
        private String DropDownValue;
        private ClinicManagementSystemDataContext dbcontext;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownStatus_SelectedIndexChanged(object sender, EventArgs e)
        {
            

        }

        protected void Submit_Click(object sender, EventArgs e)
        {

            dbcontext = new ClinicManagementSystemDataContext();
            AppointmentsReport.DataSource = from appointment in dbcontext.TBLAPPOINTMENTs
                                            join patient in dbcontext.TBLPATIENTs on appointment.appointment_PatientID equals patient.patient_ID
                                            join doctor in dbcontext.TBLDOCTORs on appointment.appointment_DoctorID equals doctor.doctor_ID 
                                            where appointment.appointment_DoctorID == Int32.Parse(DocReportTB.Text) && appointment.appointment_Status == DropDownStatus.SelectedValue
                                            select new
                                            {

                                                appointment.appoinment_ID,
                                                patient.patient_Name,
                                                doctor.doctor_Name,
                                                appointment.appointment_Date,
                                                appointment.appoinment_Details,
                                                appointment.appointment_Status

                                            };
                      AppointmentsReport.DataBind();
        }
    }
}