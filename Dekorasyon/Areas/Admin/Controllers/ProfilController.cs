using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Dekorasyon.Models;
using Dekorasyon.Kll;

namespace Dekorasyon.Areas.Admin.Controllers
{
    [SessionControlFilter]
    public class ProfilController : Controller
    {
        ProfilBLL _profil = new ProfilBLL();
        // GET: yonet/Profil
        public ActionResult Index()
        {
            var model = _profil.Get(p => p.Id == 1);
            return View(model);
        }
        public ActionResult Detay(int Id = 0)
        {
            var model = _profil.GetById(Id);
            return View(model);
        }
        [HttpPost]
        public ActionResult Detay(Profil model)
        {
            try
            {
                _profil.InsertOrUpdate(model, model.Id);
                ViewBag.Basari = "Basariyla Kaydedildi";
            }
            catch (Exception)
            {

                ViewBag.Hata = "Hata Var";
            }
            return View(model);
        }
    }
}