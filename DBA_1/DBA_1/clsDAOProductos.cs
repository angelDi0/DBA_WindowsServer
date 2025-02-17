using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using MySql.Data.MySqlClient;

namespace DBA_1
{
	public class clsDAOProductos
	{
        public bool InsertarLibro(clsProducto producto)
        {

            string strCadenaConexion = "server=localhost;userid=angel;password=1234;database=sistema;";
            MySqlConnection conexion = new MySqlConnection(strCadenaConexion);

            try
            {

                //CONECTAMOS CON LA BASE DE DATOS
                conexion.Open();

                string strInsert = @"INSERT INTO libro 
                (ISBN, titulo, numero_edicion, year_publicacion, autores, pais_publicacion, sinopsis, carrera, materia) 
                VALUES 
                (@ISBN, @titulo, @numero_edicion, @year_publicacion, @autores, @pais_publicacion, @sinopsis, @carrera, @materia)";

                MySqlCommand cmd = new MySqlCommand(strInsert, conexion);

                // OPERACION INSERT EN LA TABLA LIBRO
                cmd.Parameters.AddWithValue("@ISBN", producto.ISBN);
                cmd.Parameters.AddWithValue("@titulo", producto.titulo);
                cmd.Parameters.AddWithValue("@numero_edicion", producto.numero_edicion);
                cmd.Parameters.AddWithValue("@year_publicacion", producto.year_publicacion);
                cmd.Parameters.AddWithValue("@autores", producto.autores);
                cmd.Parameters.AddWithValue("@pais_publicacion", producto.pais_publicacion);
                cmd.Parameters.AddWithValue("@sinopsis", producto.sinopsis);
                cmd.Parameters.AddWithValue("@carrera", producto.carrera);
                cmd.Parameters.AddWithValue("@materia", producto.materia);


                cmd.ExecuteNonQuery();
                return true;
            }
            catch
            {

                return false;
            
            }
            finally 
            {
                //CERRAMOS CONEXION CON LA BASE DE DATOS
                conexion.Dispose();
                conexion.Close();

            }
        }

    }

}