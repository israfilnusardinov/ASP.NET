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
    public class EkipController : Controller
    {
        EkipBLL _ekip = new EkipBLL();
        // GET: yonet/Ekip
        public ActionResult Index()
        {
            var model = _ekip.Get();
            return View(model);
        }
        public ActionResult Detay(int Id = 0)
        {
            var model = _ekip.GetById(Id);
            return View(model);
        }
        [ValidateInput(false)]
        [HttpPost]
        public ActionResult Detay(Ekip model, HttpPostedFileBase GorselYukle = null)
        {
            try
            {
                model.SEOLink = GenelAraclar.SEOLink(model.Baslik);
                if (GorselYukle != null)
                {
                    string yol = HttpContext.Request.PhysicalApplicationPath + "kll-assets/image/ekip/";
                    string filename = GenelAraclar.GorselAdiBul(yol, GorselYukle.FileName, model.SEOLink);
                    GorselYukle.SaveAs(yol + filename);
                    model.Gorsel = filename;
                }
                _ekip.InsertOrUpdate(model, model.Id);
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
                    _ekip.Delete(cbSec[i]);
                }
                ViewBag.Mesaj = cbSec.Length + " " + "Kayıt Silindi.";
                var model = _ekip.Get();
                return View(model);
            }
            else
            {
                ViewBag.Hata = "Silmek için alan seçtiğinizden emin olunuz.";
                var model = _ekip.Get();
                return View(model);
            }
        }
    }
}