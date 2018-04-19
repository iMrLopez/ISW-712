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
        private static Aspirante aspiranteActual = new Aspirante();

        
        // GET: Home/DatosPersonales
        public ActionResult Index()
        {
            return View();
        }

        // POST: Home/DatosPersonales
        [HttpPost]
        public ActionResult Index(FormCollection collection)
        {
            aspiranteActual.Cedula = collection["Cedula"];
            seleccionarCasoDePrueba(); //Seleccionar caso de prueba segun la cedula recibida

            Enum.TryParse(collection["Carrera1"], out Carrera myStatus);
            aspiranteActual.Carrera1 = myStatus;
            Enum.TryParse(collection["Carrera2"], out Carrera myStatus2);
            aspiranteActual.Carrera2 = myStatus2;

            return RedirectToAction("DatosPersonales");

        }
        
        // GET: Home/DatosPersonales
        public ActionResult DatosPersonales()
        {

            return View(aspiranteActual);
        }

        // POST: Home/DatosPersonales
        [HttpPost]
        public ActionResult DatosPersonales(FormCollection collection)
        {

            aspiranteActual.Nombre = collection["Nombre"];
            aspiranteActual.Apellido1 = collection["Apellido1"];
            aspiranteActual.Apellido2 = collection["Apellido2"];
            aspiranteActual.FechaNacimiento = collection["FechaNacimiento"];

            aspiranteActual.Direccion = collection["Direccion"];

            Enum.TryParse(collection["Provincia"], out Provincia Provincia);
            aspiranteActual.Provincia = Provincia;

            Enum.TryParse(collection["Canton"], out Canton Canton);
            aspiranteActual.Provincia = Provincia;

            Enum.TryParse(collection["Distrito"], out Distrito Distrito);
            aspiranteActual.Provincia = Provincia;

            return RedirectToAction("DatosMep");

        }
        
        // GET: Home/DatosMep
        public ActionResult DatosMep()
        {

            return View(aspiranteActual);
        }

        // POST: Home/DatosMep
        [HttpPost]
        public ActionResult DatosMep(FormCollection collection)
        {
            //Get info from form
            aspiranteActual.MEPNotaPresentacion = collection["MEPNotaPresentacion"];
            aspiranteActual.MEPColegio = collection["MEPColegio"];
            aspiranteActual.MEPAnnoEgresado = collection["MEPAnnoEgresado"];


            return RedirectToAction("DatosINA");
        }
        
        // GET: Home/DatosINA
        public ActionResult DatosINA()
        {
            return View(aspiranteActual);
        }

        // POST: Home/DatosINA
        [HttpPost]
        public ActionResult DatosINA(FormCollection collection)
        {
            aspiranteActual.INACarrera = collection["INACarrera"];
            aspiranteActual.INAAnnoGraduacion = collection["INAAnnoGraduacion"];

            return RedirectToAction("DatosLaborales");
        }
        
        // GET: Home/DatosLaborales
        public ActionResult DatosLaborales()
        {

            return View(aspiranteActual);
        }

        // POST: Home/DatosLaborales
        [HttpPost]
        public ActionResult DatosLaborales(FormCollection collection)
        {
            // Get Info From Form

            aspiranteActual.LABORALEmpresa = collection["LABORALEmpresa"];
            aspiranteActual.LABORALPuesto = collection["LABORALPuesto"];
            aspiranteActual.LABORALInicioLabores = collection["LABORALInicioLabores"];


            return RedirectToAction("ResultadoAdmision");
        }
        
        // GET: Home/ResultadoAdmision
        public ActionResult ResultadoAdmision()
        {

            return View(aspiranteActual);
        }
        
        //GET: Lista de resultado de admision
        public ActionResult listadoResultado()
        {
            return View(this.DevuelveListadoAspirantes());
        }

        //Estos metodos son utilizados para la logica del sistema

        /* Selecciona el caso de prueba basado en la identificacion insertada en el Index
            Se busca en la lista de tipo List<Models.Aspirante> devuelta por el metodo DevuelveListadoAspirantes() el id recibido y lo guarda en la instancia actual a usar
         */
        private void seleccionarCasoDePrueba()
        {

            Aspirante resultado = DevuelveListadoAspirantes().Find(x => x.Cedula == aspiranteActual.Cedula); //Buscar el aspirante por cedula en la lista de registrados
            if (resultado != null)
                aspiranteActual = resultado;

        }

        private List<Models.Aspirante> DevuelveListadoAspirantes()
        {
            List<Aspirante> retorno = new List<Aspirante>();

            retorno.Add(new Aspirante()
            {
                Cedula = "116230677",
                MEPNotaPresentacion = "95",
                MEPColegio = "C.T.P Jesus Ocaña Rojas",
                MEPAnnoEgresado = "2014",
                Carrera1 = Carrera.Ingeniería_Electrónica,
                NotaIngreso = 8.9f,
                FechaAdmision = "4/21/2018",
                EstadoAdmision="Admitido"
            }); //Este caso de prueba es el ID  116230677 y incluye la nota de presentacion del MEP

            retorno.Add(new Aspirante()
            {
               Cedula = "207210224",
                Nombre = "Jean Carlos ",
                Apellido1 = "Arroyo ",
                Apellido2 = "Hernández ",
                Genero = Genero.Masculino,
                FechaNacimiento = "09/01/94",
                Direccion = "la Guácima ",
                Provincia = Provincia.Alajuela,
                Carrera1 = Carrera.INGENIERÍA_DEL_SOFTWARE_TECNOLOGÍAS_INFORMÁTICAS,
                Canton = Canton.Central,
                Distrito = Distrito.Guacima,
                MEPNotaPresentacion = "30",
                MEPColegio = "Liceo la Guácima ",
                MEPAnnoEgresado = "2011",
                NotaIngreso = 7.5f,
                FechaAdmision = "4/20/2018",
                EstadoAdmision = "Lista de Espera"
            }); //Este caso de pruebas es el ID 207210224 incluye toda la informacion del aspirante

            retorno.Add(new Aspirante()
            {
                Cedula = "206630171",
                Nombre = "Jorge",
                Apellido1 = "Sanchez",
                Apellido2 = "Oconitrillo",
                Genero = Genero.Masculino,
                FechaNacimiento = "11-08-1989",
                Carrera1 = Carrera.Fotografía_Tecnología_de_la_Imagen,
                Direccion = "Santa Teresita Casa #8",
                Provincia = Provincia.Alajuela,
                Canton = Canton.Central,
                Distrito = Distrito.Central,
                NotaIngreso = 6.0f,
                FechaAdmision = "4/21/2018",
                EstadoAdmision = "Admitido"
            }); //Este caso de pruebas es el ID 206630171 incluye solo la informacion del TSE del candidato

            return retorno;

        }


    }
}