using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicSystemInWebForm.Appointments
{
    public partial class Edit : System.Web.UI.Page
    {
        private int appointmentID;
        private ClinicManagementSystemDataContext dbcontext = new ClinicManagementSystemDataContext();
        private TBLAPPOINTMENT newAppoinment;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                appointmentID = int.Parse(Request.QueryString["id"]);
            


            EditAppointmentDrList.DataSource = from doctor in dbcontext.TBLDOCTORs
                                               where doctor.is_Active.Equals('Y')
                                               select new
                                               {
                                                   doctor.doctor_Name,
                                                   doctor.doctor_ID
                                               };
            EditAppointmentDrList.DataTextField = "doctor_Name";
            EditAppointmentDrList.DataValueField = "doctor_ID";
            EditAppointmentDrList.DataBind();


            newAppoinment = dbcontext.TBLAPPOINTMENTs.Where(app => app.appoinment_ID == appointmentID).SingleOrDefault();
            //newAppoinment.appointment_Date = EditAppointmentDateTB.Text + " " + EditAppointmentTimeL.Text;

            EditAppointmentDrList.SelectedValue = newAppoinment.appointment_DoctorID.ToString();
           EditAppointmentDetailsTB.Text = newAppoinment.appoinment_Details;
           AppointmentStatusR.SelectedValue = newAppoinment.appointment_Status;

            }
        }

        protected void EASubmit_Click(object sender, EventArgs e)
        {

            using (dbcontext)
            {
               

                //newAppoinment.appointment_Date = EditAppointmentDateTB.Text + "" + EditAppointmentTimeL.Text;
                
                newAppoinment.appointment_DoctorID = Int32.Parse(EditAppointmentDrList.SelectedValue);
                newAppoinment.appoinment_Details = EditAppointmentDetailsTB.Text;
                newAppoinment.appointment_Status = AppointmentStatusR.SelectedValue;


                dbcontext.TBLAPPOINTMENTs.InsertOnSubmit(newAppoinment);
                dbcontext.SubmitChanges();


            }

            Response.Write("<script>alert('Record updated Sucessfully')</script>");
            Response.Redirect("~/Appointments/AppointmentIndex.aspx");


        }
    }
}