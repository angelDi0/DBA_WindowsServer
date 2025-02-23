using System;
using System.Collections.Generic;
using System.Drawing.Printing;
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
            if (IsPostBack || Request.QueryString["nuevoLibro"] == "true") {
                CargarProductos();
            }
        }

        protected void btnRedirigir_Click(object sender, EventArgs e)
        {
            Response.Redirect("FORM_1.aspx");
        }

        private void CargarProductos() {
            clsDAOProductos objProductos = new clsDAOProductos();

            List<clsProducto> productos = objProductos.ObtenerProductos();

            if (productos.Count > 0)
            {
                GridView1.DataSource = productos;
                GridView1.DataBind();
            }
            else {
                GridView1.DataSource = null;
                GridView1.DataBind();
            }

            
        }

        protected void btnCargarDatos_Click(object sender, EventArgs e)
        {
            CargarProductos();
        }
    }
}
