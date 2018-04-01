using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoIngenieria.Models
{
    public class Aspirante
    {
        string Cedula { get; set; }

        string Nombre { get; set; }

        string Apellido1 { get; set; }

        string Apellido2 { get; set; }

        char Sexo { get; set; }

        string FechaNacimiento{ get; set; }

        string Direccion { get; set; }

        int Provincia { get; set; }

        int Canton { get; set; }

        int Distrito { get; set; }
    }
}