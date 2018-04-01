using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProyectoIngenieria.Controllers
{
    public class DatosController : Controller
    {
        // GET: Datos
        public ActionResult DatosPersonales()
        {
            return View();
        }
    }
}