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
    public class HaberController : Controller
    {
        HaberKategoriBLL _haberKategori = new HaberKategoriBLL();
        HaberBLL _haber = new HaberBLL();
        // GET: yonet/Haber
        public ActionResult Index()
        {
            var model = _haber.Get();
            return View(model);
        }
        public ActionResult Detay(int Id = 0)
        {
            var model = _haber.GetById(Id);
            ViewBag.HaberKategori = _haberKategori.GetAll();
            return View(model);
        }
        [ValidateInput(false)]
        [HttpPost]
        public ActionResult Detay(Haber model, HttpPostedFileBase GorselYukle = null)
        {
            try
            {
                model.SEOLink = GenelAraclar.SEOLink(model.Baslik);
                if (GorselYukle != null)
                {
                    string yol = HttpContext.Request.PhysicalApplicationPath + "kll-assets/image/haber/";
                    string filename = GenelAraclar.GorselAdiBul(yol, GorselYukle.FileName, model.SEOLink);
                    GorselYukle.SaveAs(yol + filename);
                    model.Gorsel = filename;
                }
                _haber.InsertOrUpdate(model, model.Id);
                ViewBag.Basarili = "Basariyla Kaydedildi";
            }
            catch (Exception)
            {

                ViewBag.Hata = "Hata var";
            }
            ViewBag.HaberKategori = _haberKategori.GetAll();
            return View(model);
        }
        [HttpPost]
        public ActionResult Index(int[] cbSec)
        {
            if (cbSec != null)
            {
                for (int i = 0; i < cbSec.Length; i++)
                {
                    _haber.Delete(cbSec[i]);
                }
                ViewBag.Mesaj = cbSec.Length + " " + "Kayıt Silindi.";
                var model = _haber.Get();
                return View(model);
            }
            else
            {
                ViewBag.Hata = "Silmek için alan seçtiğinizden emin olunuz.";
                var model = _haber.Get();
                return View(model);
            }
        }
    }
}