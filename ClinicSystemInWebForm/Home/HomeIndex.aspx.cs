using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicSystemInWebForm.Home
{
    public partial class HomeIndex : System.Web.UI.Page
    {
        private ClinicManagementSystemDataContext dbcontxt;

        public HomeIndex()
        {
            dbcontxt = new ClinicManagementSystemDataContext();

        }
        protected void Page_Load(object sender, EventArgs e)
        {

            //int kno_of_pateint
            patientL.Text= ""+dbcontxt.TBLPATIENTs.Count();

            doctorL.Text = ""+dbcontxt.TBLDOCTORs.Where(doctor => doctor.is_Active == "Y").Count();

            usersL.Text = ""+dbcontxt.TBLUSERs.Where(u => u.is_Active == 'Y').Count();

            //AppointmentL.Text=""+ dbcontxt.TBLAPPOINTMENTs.Where( app => app.appointment_Date == DataTime.Now())

           
        }
    }
}