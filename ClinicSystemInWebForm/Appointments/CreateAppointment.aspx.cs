using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicSystemInWebForm.Appointments
{
    public partial class CreateAppointment : System.Web.UI.Page
    {
        private int Id_OfPatient;
        private ClinicManagementSystemDataContext dbcontext;

        public CreateAppointment()
        {
            dbcontext = new ClinicManagementSystemDataContext();

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Id_OfPatient = int.Parse(Request.QueryString["id"]);
            }


            AppointmentDoctorList.DataSource = from doctor in dbcontext.TBLDOCTORs
                                               where doctor.is_Active.Equals('Y')
                                               select new
                                               {
                                                   doctor.doctor_Name,
                                                   doctor.doctor_ID
                                               };
            AppointmentDoctorList.DataTextField = "doctor_Name";
            AppointmentDoctorList.DataValueField = "doctor_ID";
            AppointmentDoctorList.DataBind();

            GetAppointment();


        }


        protected void GetAppointment()
        {


            patientAppointmentGrid.DataSource  = from appointment in dbcontext.TBLAPPOINTMENTs
                                             join patient in dbcontext.TBLPATIENTs on appointment.appointment_PatientID equals patient.patient_ID
                                             join doctor in dbcontext.TBLDOCTORs on appointment.appointment_DoctorID equals doctor.doctor_ID
                                             where patient.patient_ID == Id_OfPatient
                                             select new
                                             {

                                                 appointment.appoinment_ID,
                                                 patient.patient_Name,
                                                 doctor.doctor_Name,
                                                 appointment.appointment_Date,
                                                 appointment.appoinment_Details
                                                

                                             };
            patientAppointmentGrid.DataBind();

        }


        protected void SaveAppointment_Click(object sender, EventArgs e)
        {
            using(dbcontext)
            {
                TBLAPPOINTMENT newAppoinment = new TBLAPPOINTMENT();

                newAppoinment.appointment_Date = AppointmentDateTextBox.Text + " " + AppointmentTimeTextBox.Text;
                newAppoinment.appointment_PatientID = int.Parse(Request.QueryString["id"]);
                newAppoinment.appointment_DoctorID = Int32.Parse(AppointmentDoctorList.SelectedValue);
                newAppoinment.appoinment_Details = 
                newAppoinment.appointment_Status = "Y";
               

            dbcontext.TBLAPPOINTMENTs.InsertOnSubmit(newAppoinment);
            dbcontext.SubmitChanges();



        }

        Response.Write("<script>alert('Record Added Sucessfully')</script>");
        GetAppointment();

        }




    }
}