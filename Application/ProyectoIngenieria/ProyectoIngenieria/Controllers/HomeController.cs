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

        // POST: Home/Index
        [HttpPost]
        public ActionResult DatosPersonales(FormCollection collection)
        {

            var aspirante = new Aspirante();
            aspirante.Cedula = collection["Cedula"];

            Enum.TryParse(collection["Carrera1"], out Carrera myStatus);
            aspirante.Carrera1 = myStatus;
            Enum.TryParse(collection["Carrera2"], out Carrera myStatus2);
            aspirante.Carrera2 = myStatus2;

            aspirante.Nombre = collection["Nombre"];
            aspirante.Apellido1 = collection["Apellido1"];
            aspirante.Apellido2 = collection["Apellido2"];

            //TODO finish getting the data here


            return RedirectToAction("DatosMep", aspirante);

        }

        public ActionResult DatosMep(Aspirante pAspirante)
        {

            return View(pAspirante);
        }

        // POST: Home/Index
        [HttpPost]
        public ActionResult DatosMep(FormCollection collection)
        {

            var aspirante = new Aspirante();
            aspirante.Cedula = collection["Cedula"];

            Enum.TryParse(collection["Carrera1"], out Carrera myStatus);
            aspirante.Carrera1 = myStatus;
            Enum.TryParse(collection["Carrera2"], out Carrera myStatus2);
            aspirante.Carrera2 = myStatus2;

            aspirante.Nombre = collection["Nombre"];
            aspirante.Apellido1 = collection["Apellido1"];
            aspirante.Apellido2 = collection["Apellido2"];

            return RedirectToAction("DatosINA", aspirante);
        }

        public ActionResult DatosINA(Aspirante pAspirante)
        {
            return View(pAspirante);
        }

        // POST: Home/Index
        [HttpPost]
        public ActionResult DatosINA(FormCollection collection)
        {

            var aspirante = new Aspirante();
            /*aspirante.Cedula = collection["Cedula"];

            Enum.TryParse(collection["Carrera1"], out Carrera myStatus);
            aspirante.Carrera1 = myStatus;
            Enum.TryParse(collection["Carrera2"], out Carrera myStatus2);
            aspirante.Carrera2 = myStatus2;*/

            return RedirectToAction("DatosLaborales", aspirante);
        }


        public ActionResult DatosLaborales(Aspirante pAspirante)
        {

            return View(pAspirante);
        }

        // POST: Home/Index
        [HttpPost]
        public ActionResult DatosLaborales(FormCollection collection)
        {

            var aspirante = new Aspirante();
            /*aspirante.Cedula = collection["Cedula"];

            Enum.TryParse(collection["Carrera1"], out Carrera myStatus);
            aspirante.Carrera1 = myStatus;
            Enum.TryParse(collection["Carrera2"], out Carrera myStatus2);
            aspirante.Carrera2 = myStatus2;*/

            return RedirectToAction("ResultadoAdmision", aspirante);
        }

        public ActionResult ResultadoAdmision(Aspirante pAspirante)
        {

            return View(pAspirante);
        }

    }
}