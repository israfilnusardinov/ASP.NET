using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Dekorasyon.Models;
using Dekorasyon.Kll;

namespace Dekorasyon.Areas.Admin.Controllers
{
    public class AnasayfaController : Controller
    {
        AnasayfaBLL _anasayfa = new AnasayfaBLL();
        
        public ActionResult Index()
        {
            var model = _anasayfa.Get();
            return View(model);
        }
        public ActionResult Detay(int Id = 0)
        {
            var model = _anasayfa.GetById(Id);
            return View(model);
        }
        [ValidateInput(false)]
        [HttpPost]
        public ActionResult Detay(HomePage model, HttpPostedFileBase GorselYukle = null)
        {
            try
            {
               
                if (GorselYukle != null)
                {
                    string yol = HttpContext.Request.PhysicalApplicationPath + "kll-assets/image/anasayfa/";
                    string filename = GenelAraclar.GorselAdiBul(yol, GorselYukle.FileName, model.Baslik);
                    GorselYukle.SaveAs(yol + filename);
                    model.Gorsel = filename;
                }
                _anasayfa.InsertOrUpdate(model, model.Id);
                ViewBag.Basari = "Basariyla Kaydedildi";
            }
            catch (Exception)
            {

                ViewBag.Hata = "Hata Var";
            }
            return View(model);
        }
        [HttpPost]
        public ActionResult Index(int[] cbSec)
        {
            if (cbSec != null)
            {
                for (int i = 0; i < cbSec.Length; i++)
                {
                    _anasayfa.Delete(cbSec[i]);
                }
                ViewBag.Mesaj = cbSec.Length + " " + "Kayıt Silindi.";
                var model = _anasayfa.Get();
                return View(model);
            }
            else
            {
                ViewBag.Hata = "Silmek için alan seçtiğinizden emin olunuz.";
                var model = _anasayfa.Get();
                return View(model);
            }
        }
    }
}