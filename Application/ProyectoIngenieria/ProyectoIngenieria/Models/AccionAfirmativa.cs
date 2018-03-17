using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoIngenieria.Models
{
    public class AccionAfirmativa
    {
        public int IdAccionAfirmativa { get; set; }
        public TipoAccionAfirmativa TipoAccionAfirmativa { get; set; }
        public int PuntosAccionAfirmativa { get; set; }
    }
}