using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DBA_1
{
	public class clsProducto
	{
		public string ISBN { get; set; }

		public string titulo { get; set; }

		public int numero_edicion { get; set; }

		public DateTime year_publicacion { get; set; }

		public string autores { get; set; }

		public string pais_publicacion { get; set; }

		public string sinopsis { get; set; }

		public string carrera { get; set; }
		
		public string materia { get; set; }


	}
}