using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace ProyectoIngenieria.Models
{
    public class DatosLaboralesAspirante
    {


        public int id { get; set; }

        [DisplayName("Numero de Cedula")]
        public int idAspirante { get; set; }
        [DisplayName("Nombre de la Empresa")]
        public string empresa { get; set; }
        [DisplayName("Años de laborar")]
        public string Añolaborales { get; set; }
        [DisplayName("Departmento Laboral")]
        public string departamentoLaboral { get; set; }
        [DisplayName("Puesto laboral")]
        public string puestotrabajo { get; set; }

        public int puntos { get; set; }
    }
}