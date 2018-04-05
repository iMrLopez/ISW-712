using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using ProyectoIngenieria.Models;

namespace ProyectoIngenieria.Controllers
{
    public class DatosLaboralesAspirantesController : Controller
    {
        private ProyectoIngenieriaContext db = new ProyectoIngenieriaContext();

        // GET: DatosLaboralesAspirantes
        public ActionResult Index()
        {
            return View(db.DatosLaboralesAspirantes.ToList());
        }

        // GET: DatosLaboralesAspirantes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DatosLaboralesAspirante datosLaboralesAspirante = db.DatosLaboralesAspirantes.Find(id);
            if (datosLaboralesAspirante == null)
            {
                return HttpNotFound();
            }
            return View(datosLaboralesAspirante);
        }

        // GET: DatosLaboralesAspirantes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: DatosLaboralesAspirantes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id,idAspirante,empresa,Añolaborales,departamentoLaboral,puestotrabajo,puntos")] DatosLaboralesAspirante datosLaboralesAspirante)
        {
            if (ModelState.IsValid)
            {
                db.DatosLaboralesAspirantes.Add(datosLaboralesAspirante);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(datosLaboralesAspirante);
        }

        // GET: DatosLaboralesAspirantes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DatosLaboralesAspirante datosLaboralesAspirante = db.DatosLaboralesAspirantes.Find(id);
            if (datosLaboralesAspirante == null)
            {
                return HttpNotFound();
            }
            return View(datosLaboralesAspirante);
        }

        // POST: DatosLaboralesAspirantes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id,idAspirante,empresa,Añolaborales,departamentoLaboral,puestotrabajo,puntos")] DatosLaboralesAspirante datosLaboralesAspirante)
        {
            if (ModelState.IsValid)
            {
                db.Entry(datosLaboralesAspirante).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(datosLaboralesAspirante);
        }

        // GET: DatosLaboralesAspirantes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            DatosLaboralesAspirante datosLaboralesAspirante = db.DatosLaboralesAspirantes.Find(id);
            if (datosLaboralesAspirante == null)
            {
                return HttpNotFound();
            }
            return View(datosLaboralesAspirante);
        }

        // POST: DatosLaboralesAspirantes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            DatosLaboralesAspirante datosLaboralesAspirante = db.DatosLaboralesAspirantes.Find(id);
            db.DatosLaboralesAspirantes.Remove(datosLaboralesAspirante);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
