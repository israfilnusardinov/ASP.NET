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
    public class UrunKategoriController : Controller
    {
        UrunKategoriBLL _urunKategori = new UrunKategoriBLL();
        // GET: yonet/UrunKategori
        public ActionResult Index()
        {
            var model = _urunKategori.Get();
            return View(model);
        }
        public ActionResult Detay(int Id = 0)
        {
            var model = _urunKategori.GetById(Id);
            return View(model);
        }
        [ValidateInput(false)]
        [HttpPost]
        public ActionResult Detay(UrunKategori model, HttpPostedFileBase GorselYukle = null)
        {
            try
            {
                model.SEOLink = GenelAraclar.SEOLink(model.Baslik);
                if (GorselYukle != null)
                {
                    string yol = HttpContext.Request.PhysicalApplicationPath + "kll-assets/image/urunKategori/";
                    string filename = GenelAraclar.GorselAdiBul(yol, GorselYukle.FileName, model.SEOLink);
                    GorselYukle.SaveAs(yol + filename);
                    model.Gorsel = filename;
                }
                _urunKategori.InsertOrUpdate(model, model.Id);
                ViewBag.Basarili = "Basariyla Kaydedildi";
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
            try
            {
                for (int i = 0; i < cbSec.Length; i++)
                {
                    _urunKategori.Delete(cbSec[i]);
                    ViewBag.Mesaj = cbSec.Length + " " + "Kayıt Silindi.";
                }

            }
            catch (Exception)
            {

                ViewBag.Hata = "Lütfen Bağlı Alt Menüleri Siliniz";
            }
            var model = _urunKategori.GetAll();
            return View(model);
        }
    }
}