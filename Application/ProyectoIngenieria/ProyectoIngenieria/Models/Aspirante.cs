using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace ProyectoIngenieria.Models
{
    public class Aspirante
    {
        [DisplayName("Numero de Cedula")]
        public string Cedula { get; set; }
        [DisplayName("Nombre Completo")]
        public string Nombre { get; set; }
        [DisplayName("Primer Apellido")]
        public string Apellido1 { get; set; }
        [DisplayName("Segundo Apellido")]
        public string Apellido2 { get; set; }
        [DisplayName("Genero")]
        public Genero Genero { get; set; }
        [DisplayName("Fecha de Nacimiento")]
        public string FechaNacimiento { get; set; }
        [DisplayName("Direccion")]
        public string Direccion { get; set; }
        [DisplayName("Provincia")]
        public Provincia Provincia { get; set; }
        [DisplayName("Canton")]
        public Canton Canton { get; set; }
        [DisplayName("Distrito")]
        public Distrito Distrito { get; set; }

        public Carrera Carrera1 { get; set; }
        public Carrera Carrera2 { get; set; }
    }
}