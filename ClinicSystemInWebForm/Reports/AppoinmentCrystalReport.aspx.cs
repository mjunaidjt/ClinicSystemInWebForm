using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicSystemInWebForm.Reports
{
    public partial class AppoinmentCrystalReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ClinicManagementSystemDataContext dataContext = new ClinicManagementSystemDataContext();
            AppoinmentDataSet dt = new AppoinmentDataSet();


        }
    }
}