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
    public class SosyalMedyaController : Controller
    {
        SosyalMedyaBLL _sosylaMedya = new SosyalMedyaBLL();
        // GET: yonet/SosyalMedya
        public ActionResult Index()
        {
            var model = _sosylaMedya.Get();
            return View(model);
        }
        public ActionResult Detay(int Id = 0)
        {
            var model = _sosylaMedya.GetById(Id);
            return View(model);
        }
        [HttpPost]
        public ActionResult Detay(SosyalMedya model)
        {
            try
            {
                _sosylaMedya.InsertOrUpdate(model, model.Id);
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