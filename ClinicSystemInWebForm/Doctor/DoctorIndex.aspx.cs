using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicSystemInWebForm.Doctor
{
    public partial class DoctorIndex : System.Web.UI.Page
    {
        private int doctorID=0;
        private  ClinicManagementSystemDataContext dbcontext;

        public DoctorIndex()
        {
             dbcontext = new ClinicManagementSystemDataContext();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetDoctors();
            }
        }

        private void GetDoctors()
        {

            DoctorDataGrid.DataSource = dbcontext.TBLDOCTORs;
            DoctorDataGrid.DataBind(); //issue 
        }


    
        //public void DoctorDataGrid_GetData()
        //{
        //    //    int doctorid = Convert.ToInt32(DoctorDataGrid.SelectedDataKey["doctor_ID"].ToString());

        //    //    IQueryable doctor= from sel_Patient in dbcontext.TBLPATIENTs
        //    //                    where sel_Patient.patient_ID == doctorid
        //    //                       select sel_Patient;

        //    //    return doctor;
        //}

        protected void DoctorDataGrid_SelectedIndexChanged(object sender, EventArgs e)
        {
            doctorID = Convert.ToInt32(DoctorDataGrid.SelectedDataKey["doctor_ID"].ToString());

            //Session["SelectedID"] = patientid;

            Response.Redirect("~/Doctor/Details.aspx?id="+doctorID);
        }

    }
}