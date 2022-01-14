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
    public class UrunGaleriController : Controller
    {
        UrunBLL _urun = new UrunBLL();
        UrunGaleriBLL _urunGaleri = new UrunGaleriBLL();
        // GET: yonet/UrunGaleri
        public ActionResult Index()
        {
            var model = _urunGaleri.Get();
            return View(model);
        }
        public ActionResult Detay(int Id = 0)
        {
            var model = _urunGaleri.GetById(Id);
            ViewBag.Kategori = _urun.Get();
            return View(model);
        }
        [ValidateInput(false)]
        [HttpPost]
        public ActionResult Detay(UrunGaleri model, HttpPostedFileBase GorselYukle = null)
        {
            try
            {
                if (GorselYukle != null)
                {
                    string yol = HttpContext.Request.PhysicalApplicationPath + "kll-assets/image/urungaleri/";
                    string filename = GenelAraclar.GorselAdiBul(yol, GorselYukle.FileName);
                    GorselYukle.SaveAs(yol + filename);
                    model.Gorsel = filename;
                }
                _urunGaleri.InsertOrUpdate(model, model.Id);
                ViewBag.Basari = "Basariyla Kaydedildi";
            }
            catch (Exception)
            {

                ViewBag.Hata = "Hata Var";
            }
            ViewBag.Kategori = _urun.Get();
            return View(model);
        }
        [HttpPost]
        public ActionResult Index(int[] cbSec)
        {
            if (cbSec != null)
            {
                for (int i = 0; i < cbSec.Length; i++)
                {
                    _urunGaleri.Delete(cbSec[i]);
                }
                ViewBag.Mesaj = cbSec.Length + " " + "Kayıt Silindi.";
                var model = _urun.Get();
                return View(model);
            }
            else
            {
                ViewBag.Hata = "Silmek için alan seçtiğinizden emin olunuz.";
                var model = _urunGaleri.Get();
                return View(model);
            }
        }
    }
}