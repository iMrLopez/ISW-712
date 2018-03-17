using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoIngenieria.Models
{
    public class Candidato
    {

        public String Id { get; set; }
        public String Nombre { get; set; }
        public String Provincia { get; set; }
        public String Canton { get; set; }
        public String Barrio { get; set; }

        public int TotalAccionesAfirm { get; set; }
        public float TotalNotaPresentacion { get; set; }

        public List<AccionAfirmativa> ListaAccionesAfirmativas { get; set; }
        public Carrera Carrera1 { get; set; }
        public Carrera Carrera2 { get; set; }

    }
}