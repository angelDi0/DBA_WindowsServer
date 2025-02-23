using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DBA_1
{
    public partial class Librero : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRedirigir_Click(object sender, EventArgs e)
        {
            Response.Redirect("FORM_1.aspx");
        }
    }
}
