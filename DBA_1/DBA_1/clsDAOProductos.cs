using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using MySql.Data.MySqlClient; // Librería para MySQL

namespace DBA_1
{
    public class clsDAOProductos
    {
        /// <summary>
        /// private string strCadenaConexion = "server=localhost;userid=root;password=root;database=sistema;";
        /// </summary>
        /// 
        string strCadenaConexion = ConfigurationManager.ConnectionStrings["MiConexion"].ConnectionString;


        /// <summary>
        /// Inserta un nuevo libro en la base de datos.
        /// </summary>
        /// <param name="producto">Objeto clsProducto con la información del libro.</param>
        /// <returns>True si la inserción fue exitosa, False si hubo un error.</returns>
        public bool InsertarLibro(clsProducto producto)
        {
            using (SqlConnection conexion = new SqlConnection(strCadenaConexion))
            {
                try
                {
                    conexion.Open();

                    string strInsert = @"INSERT INTO libro 
                    (ISBN, titulo, numero_edicion, year_publicacion, autores, pais_publicacion, sinopsis, carrera, materia) 
                    VALUES 
                    (@ISBN, @titulo, @numero_edicion, @year_publicacion, @autores, @pais_publicacion, @sinopsis, @carrera, @materia)";

                    using (SqlCommand cmd = new SqlCommand(strInsert, conexion))
                    {
                        // Parámetros
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
                    }
                    return true;
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Error al insertar libro: " + ex.Message);
                    return false;
                }
            }
        }

        /// <summary>
        /// Obtiene todos los libros de la base de datos.
        /// </summary>
        /// <returns>Lista de objetos clsProducto.</returns>
        public List<clsProducto> ObtenerProductos()
        {
            List<clsProducto> listaProductos = new List<clsProducto>();

            using (SqlConnection conn = new SqlConnection(strCadenaConexion))
            {
                try
                {
                    conn.Open();
                    string query = "SELECT ISBN, titulo, numero_edicion, year_publicacion, autores, pais_publicacion, sinopsis, carrera, materia FROM libro;";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                listaProductos.Add(new clsProducto
                                {
                                    ISBN = reader["ISBN"].ToString(),
                                    titulo = reader["titulo"].ToString(),
                                    numero_edicion = Convert.ToInt32(reader["numero_edicion"]),
                                    year_publicacion = Convert.ToDateTime(reader["year_publicacion"]),
                                    autores = reader["autores"].ToString(),
                                    pais_publicacion = reader["pais_publicacion"].ToString(),
                                    sinopsis = reader["sinopsis"].ToString(),
                                    carrera = reader["carrera"].ToString(),
                                    materia = reader["materia"].ToString()
                                });
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Error al obtener productos: " + ex.Message);
                }
            }

            return listaProductos;
        }
    }
}
