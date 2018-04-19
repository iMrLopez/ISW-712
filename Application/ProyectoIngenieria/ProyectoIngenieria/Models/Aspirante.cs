using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.Mvc;

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

        [DisplayName("Nota de Presentacion")]
        public string MEPNotaPresentacion { get; set; }
        [DisplayName("Colegio de Procedencia")]
        public string MEPColegio { get; set; }
        [DisplayName("Año de Egresado")]
        public string MEPAnnoEgresado { get; set; }

        [DisplayName("Nombre del titulo o especialidad")]
        public string INACarrera { get; set; }
        [DisplayName("Año de graduación")]
        public string INAAnnoGraduacion { get; set; }

        [DisplayName("Nombre de la empresa")]
        public string LABORALEmpresa { get; set; }
        [DisplayName("Nombre del puesto ejercido")]
        public string LABORALPuesto { get; set; }
        [DisplayName("Inicio de labores")]
        public string LABORALInicioLabores { get; set; }

        [DisplayName("Nota de ingreso")]
        public float NotaIngreso { get; set; }

        [DisplayName("Fecha de admision")]
        public String FechaAdmision { get; set; }

        [DisplayName("Estado de admision")]
        public String EstadoAdmision { get; set; }
    }
}