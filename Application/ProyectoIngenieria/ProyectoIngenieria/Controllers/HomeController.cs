using ProyectoIngenieria.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ProyectoIngenieria.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        // POST: Home/Index
        [HttpPost]
        public ActionResult Index(FormCollection collection)
        {
                var aspirante = new Aspirante();
                aspirante.Cedula = collection["Cedula"];
                
                Enum.TryParse(collection["Carrera1"], out Carrera myStatus);
                aspirante.Carrera1 = myStatus;
                Enum.TryParse(collection["Carrera2"], out Carrera myStatus2);
                aspirante.Carrera2 = myStatus2;

            return this.seleccionarCasoDePrueba(aspirante);

        }

        private ActionResult seleccionarCasoDePrueba(Aspirante pAspirante) {
            switch (pAspirante.Cedula)
            {
                case "1234":
                    return RedirectToAction("Index");
                case "4567":
                    return RedirectToAction("DatosPersonales",pAspirante);
                default:
                    return RedirectToAction("Index", "Home");
            }
        }


        public ActionResult DatosPersonales(Aspirante pAspirante) {

            return View(pAspirante);
        }


    }
}