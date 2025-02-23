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
            bool camposVacios = false;

            // Validación de campos vacíos y cambio de color del borde
            if (string.IsNullOrWhiteSpace(TextBox1.Text))  // ISBN
            {
                TextBox1.BorderColor = System.Drawing.Color.Red;
                camposVacios = true;
            }
            else TextBox1.BorderColor = System.Drawing.Color.Black;

            if (string.IsNullOrWhiteSpace(TextBox2.Text))  // Título
            {
                TextBox2.BorderColor = System.Drawing.Color.Red;
                camposVacios = true;
            }
            else TextBox2.BorderColor = System.Drawing.Color.Black;

            if (string.IsNullOrWhiteSpace(TextBox3.Text))  // Número de Edición
            {
                TextBox3.BorderColor = System.Drawing.Color.Red;
                camposVacios = true;
            }
            else TextBox3.BorderColor = System.Drawing.Color.Black;

            if (Calendar1.SelectedDate == DateTime.MinValue) // Año de Publicación
            {
                Calendar1.BorderColor = System.Drawing.Color.Red;
                camposVacios = true;
            }
            else Calendar1.BorderColor = System.Drawing.Color.Black;

            if (string.IsNullOrWhiteSpace(TextBox5.Text))  // Autores
            {
                TextBox5.BorderColor = System.Drawing.Color.Red;
                camposVacios = true;
            }
            else TextBox5.BorderColor = System.Drawing.Color.Black;

            if (string.IsNullOrWhiteSpace(TextBox6.Text))  // País
            {
                TextBox6.BorderColor = System.Drawing.Color.Red;
                camposVacios = true;
            }
            else TextBox6.BorderColor = System.Drawing.Color.Black;

            if (string.IsNullOrWhiteSpace(TextBox7.Text))  // Sinopsis
            {
                TextBox7.BorderColor = System.Drawing.Color.Red;
                camposVacios = true;
            }
            else TextBox7.BorderColor = System.Drawing.Color.Black;

            if (string.IsNullOrWhiteSpace(TextBox8.Text))  // Carrera
            {
                TextBox8.BorderColor = System.Drawing.Color.Red;
                camposVacios = true;
            }
            else TextBox8.BorderColor = System.Drawing.Color.Black;

            if (string.IsNullOrWhiteSpace(TextBox9.Text))  // Materia
            {
                TextBox9.BorderColor = System.Drawing.Color.Red;
                camposVacios = true;
            }
            else TextBox9.BorderColor = System.Drawing.Color.Black;

            // Si hay campos vacíos, se muestra el mensaje y se detiene el proceso
            if (camposVacios)
            {
                Label12.Text = "Todos los campos son obligatorios";
                Label12.ForeColor = System.Drawing.Color.Red;
                return;
            }

            // Creación del objeto con los valores
            clsProducto pr = new clsProducto();
            pr.ISBN = TextBox1.Text;
            pr.titulo = TextBox2.Text;

            if (!int.TryParse(TextBox3.Text, out int numeroEdicion))
            {
                Label12.Text = "Número de edición no válido, deben de ser solo números";
                Label12.ForeColor = System.Drawing.Color.Red;
                return;
            }
            pr.numero_edicion = numeroEdicion;

            pr.year_publicacion = Calendar1.SelectedDate;
            pr.autores = TextBox5.Text;
            pr.pais_publicacion = TextBox6.Text;
            pr.sinopsis = TextBox7.Text;
            pr.carrera = TextBox8.Text;
            pr.materia = TextBox9.Text;

            // Insertar el libro en la base de datos
            clsDAOProductos objProducto = new clsDAOProductos();
            if (objProducto.InsertarLibro(pr))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Producto Guardado!');", true);
                // Después de guardar el libro, redirige a la página de la tabla con un parámetro de consulta.
                Response.Redirect("Librero.aspx?nuevoLibro=true");
            }
            else
            {
                Label12.Text = "Error al guardar el producto";
                Label12.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}
