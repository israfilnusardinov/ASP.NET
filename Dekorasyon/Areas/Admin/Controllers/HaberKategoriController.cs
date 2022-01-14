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
    public class HaberKategoriController : Controller
    {
        HaberKategoriBLL _haberKategori = new HaberKategoriBLL();
        // GET: yonet/HaberKategori
        public ActionResult Index()
        {
            var model = _haberKategori.Get();
            return View(model);
        }
        public ActionResult Detay(int Id = 0)
        {
            var model = _haberKategori.GetById(Id);
            return View(model);
        }
        [ValidateInput(false)]
        [HttpPost]
        public ActionResult Detay(HaberKategori model)
        {
            try
            {
                model.SEOLink = GenelAraclar.SEOLink(model.Baslik);
                _haberKategori.InsertOrUpdate(model, model.Id);
                ViewBag.Basari = "Basariyla Kaydedildi";
            }
            catch (Exception)
            {

                ViewBag.Hata = "Hata var";
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
                    _haberKategori.Delete(cbSec[i]);
                    ViewBag.Mesaj = cbSec.Length + " " + "Kayıt Silindi.";
                }

            }
            catch (Exception)
            {

                ViewBag.Hata = "Lütfen Bağlı Alt Menüleri Siliniz";
            }
            var model = _haberKategori.GetAll();
            return View(model);
        }
    }
}