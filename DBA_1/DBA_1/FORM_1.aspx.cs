using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Runtime.Remoting.Metadata.W3cXsd2001;

namespace DBA_1
{
	public partial class FORM_1 : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void Button1_Click(object sender, EventArgs e)
		{
			clsProducto pr = new clsProducto();
			pr.ISBN = TextBox1.Text;
			pr.titulo = TextBox2.Text;
			pr.numero_edicion = int.Parse(TextBox3.Text);
			pr.year_publicacion = Calendar1.SelectedDate;
			pr.autores = TextBox5.Text;
			pr.pais_publicacion = TextBox6.Text;
			pr.sinopsis = TextBox7.Text;
			pr.carrera = TextBox8.Text;
			pr.materia = TextBox9.Text;


			clsDAOProductos objProducto = new clsDAOProductos();
			if (objProducto.InsertarLibro(pr))
			{
				Label12.Text = "Prodcuto Guardado!";
			}
			else 
			{
				Label12.Text = "Error Al Guardar";	
			}
        }
    }
}