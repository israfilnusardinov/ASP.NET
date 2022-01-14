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
    public class HizmetController : Controller
    {
        HizmetBLL _hizmet = new HizmetBLL();
        HizmetKategoriBLL _hizmetKategori = new HizmetKategoriBLL();
        // GET: yonet/Urun
        public ActionResult Index()
        {
            var model = _hizmet.Get();
            return View(model);
        }
        public ActionResult Detay(int Id = 0)
        {
            var model = _hizmet.GetById(Id);
            ViewBag.Kategori = _hizmetKategori.Get();
            return View(model);
        }
        [ValidateInput(false)]
        [HttpPost]
        public ActionResult Detay(Hizmet model, HttpPostedFileBase GorselYukle = null)
        {
            try
            {
                model.SEOLink = GenelAraclar.SEOLink(model.Baslik);
                if (GorselYukle != null)
                {
                    string yol = HttpContext.Request.PhysicalApplicationPath + "kll-assets/image/hizmet/";
                    string filename = GenelAraclar.GorselAdiBul(yol, GorselYukle.FileName, model.SEOLink);
                    GorselYukle.SaveAs(yol + filename);
                    model.Gorsel = filename;
                }
                _hizmet.InsertOrUpdate(model, model.Id);
                ViewBag.Basari = "Basariyla Kaydedildi";
            }
            catch (Exception)
            {

                ViewBag.Hata = "Hata Var";
            }
            ViewBag.Kategori = _hizmetKategori.Get();
            return View(model);
        }
        [HttpPost]
        public ActionResult Index(int[] cbSec)
        {
            if (cbSec != null)
            {
                for (int i = 0; i < cbSec.Length; i++)
                {
                    _hizmet.Delete(cbSec[i]);
                }
                ViewBag.Mesaj = cbSec.Length + " " + "Kayıt Silindi.";
                var model = _hizmet.Get();
                return View(model);
            }
            else
            {
                ViewBag.Mesaj = "Silmek için alan seçtiğinizden emin olunuz.";
                var model = _hizmet.Get();
                return View(model);
            }
        }
    }
}