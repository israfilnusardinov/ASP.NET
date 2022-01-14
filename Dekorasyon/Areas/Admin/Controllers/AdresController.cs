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
    public class AdresController : Controller
    {
        AdresBLL _adres = new AdresBLL();
        // GET: yonet/Telefon
        public ActionResult Index()
        {
            var model = _adres.Get();
            return View(model);
        }
        public ActionResult Detay(int Id = 0)
        {
            var model = _adres.GetById(Id);
            return View(model);
        }
        [HttpPost]
        public ActionResult Detay(Adres model)
        {
            try
            {
                _adres.InsertOrUpdate(model, model.Id);
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
                    _adres.Delete(cbSec[i]);
                }
                ViewBag.Mesaj = cbSec.Length + " " + "Kayıt Silindi.";
                var model = _adres.Get();
                return View(model);
            }
            else
            {
                ViewBag.Mesaj = "Silmek için alan seçtiğinizden emin olunuz.";
                var model = _adres.Get();
                return View(model);
            }
        }
    }
}