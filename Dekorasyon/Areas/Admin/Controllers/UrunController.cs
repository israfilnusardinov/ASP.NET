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
    public class UrunController : Controller
    {
        UrunBLL _urun = new UrunBLL();
        UrunKategoriBLL _urunKategori = new UrunKategoriBLL();
        // GET: yonet/Urun
        public ActionResult Index(int sayfa = 1)
        {
            var model = _urun.GetAll();
            return View(model);
        }
        public ActionResult Detay(int Id = 0)
        {
            var model = _urun.GetById(Id);
            ViewBag.Kategori = _urunKategori.Get(Order: "desc", Sort: "Id");
            return View(model);
        }
        [ValidateInput(false)]
        [HttpPost]
        public ActionResult Detay(Urun model, HttpPostedFileBase GorselYukle = null)
        {
            try
            {
                model.SEOLink = GenelAraclar.SEOLink(model.Baslik);
                if (GorselYukle != null)
                {
                    string yol = HttpContext.Request.PhysicalApplicationPath + "kll-assets/image/urun/";
                    string filename = GenelAraclar.GorselAdiBul(yol, GorselYukle.FileName, model.SEOLink);
                    GorselYukle.SaveAs(yol + filename);
                    model.Gorsel = filename;
                }
                _urun.InsertOrUpdate(model, model.Id);
                ViewBag.Basari = "Basariyla Kaydedildi";
            }
            catch (Exception)
            {

                ViewBag.Hata = "Hata Var";
            }
            ViewBag.Kategori = _urunKategori.Get();
            return View(model);
        }
        [HttpPost]
        public ActionResult Index(int[] cbSec)
        {
            if (cbSec != null)
            {
                for (int i = 0; i < cbSec.Length; i++)
                {
                    _urun.Delete(cbSec[i]);
                }
                ViewBag.Mesaj = cbSec.Length + " " + "Kayıt Silindi.";
                var model = _urun.Get();
                return View(model);
            }
            else
            {
                ViewBag.Hata = "Silmek için alan seçtiğinizden emin olunuz.";
                var model = _urun.Get();
                return View(model);
            }
        }
    }
}