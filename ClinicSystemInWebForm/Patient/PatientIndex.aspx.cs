﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicSystemInWebForm.Patient
{
    public partial class PatientIndex : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetPatientData();
        }

        private void GetPatientData()
        {
            ClinicManagementSystemDataContext dbcontext = new ClinicManagementSystemDataContext();
            PatientDataGrid.DataSource = dbcontext.TBLPATIENTs;
            PatientDataGrid.DataBind();
          
        }
    }
}