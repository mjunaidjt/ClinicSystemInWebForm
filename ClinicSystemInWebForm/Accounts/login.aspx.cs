using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ClinicSystemInWebForm.Shared
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginbutton_Click(object sender, EventArgs e)
        {
            Session["useremail"] = loginEmailTB.Text;
            Session["userpassword"] = LoginPasswordTB.Text;

            Response.Redirect("~/Home/HomeIndex.aspx");
        }
    }
}