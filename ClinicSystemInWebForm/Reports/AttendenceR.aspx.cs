using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicSystemInWebForm.Reports
{
    public partial class AttendenceR : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void patientTokenBtn_Click(object sender, EventArgs e)
        {
            ClinicManagementSystemDataContext dbcontext = new ClinicManagementSystemDataContext();
            //try
            //{

                AttendenceReport.DataSource = from appointment in dbcontext.TBLAPPOINTMENTs
                                              join patient in dbcontext.TBLPATIENTs on appointment.appointment_PatientID equals patient.patient_ID
                                              join feedback in dbcontext.TBLFEEDBACKs on appointment.appoinment_ID equals feedback.feedAppoinment_ID
                                              where appointment.appointment_PatientID == Int32.Parse(patientToken.Text)
                                              select new
                                              {
                                                  feedback.feedback_ID,
                                                  appointment.appoinment_ID,
                                                  patient.patient_ID,
                                                  feedback.feedback_Remarks,
                                                  feedback.feedback_Dignosis,
                                                  feedback.feedback_Presciption,
                                                  feedback.feedback_DateTime,


                                              };

                AttendenceReport.DataBind();

        //    }

        }
    }
}