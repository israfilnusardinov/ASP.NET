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
    public class AltMenuController : Controller
    {
        MenuBLL _menu = new MenuBLL();
        AltMenuBLL _altMenu = new AltMenuBLL();
        // GET: yonet/AltMenu
        public ActionResult Index()
        {
            var model = _altMenu.GetAll();
            return View(model);
        }
        public ActionResult Detay(int Id = 0)
        {
            var model = _altMenu.GetById(Id);
            ViewBag.Menu = _menu.GetAll();
            return View(model);
        }
        [ValidateInput(false)]
        [HttpPost]
        public ActionResult Detay(AltMenu model, HttpPostedFileBase GorselYukle = null)
        {
            try
            {
                model.SEOLink = GenelAraclar.SEOLink(model.Baslik);
                if (GorselYukle != null)
                {
                    string yol = HttpContext.Request.PhysicalApplicationPath + "kll-assets/image/altmenu/";
                    string filename = GenelAraclar.GorselAdiBul(yol, GorselYukle.FileName, model.SEOLink);
                    GorselYukle.SaveAs(yol + filename);
                    model.Gorsel = filename;
                }
                _altMenu.InsertOrUpdate(model, model.Id);
                ViewBag.Basarili = "Basariyla Kaydedildi";
            }
            catch (Exception)
            {

                ViewBag.Hata = "Hata var";
            }
            ViewBag.Menu = _menu.GetAll();
            return View(model);
        }
        [HttpPost]
        public ActionResult Index(int[] cbSec)
        {
            if (cbSec != null)
            {
                for (int i = 0; i < cbSec.Length; i++)
                {
                    _altMenu.Delete(cbSec[i]);
                }
                ViewBag.Mesaj = cbSec.Length + " " + "Kayıt Silindi.";
                var model = _altMenu.Get();
                return View(model);
            }
            else
            {
                ViewBag.Hata = "Silmek için alan seçtiğinizden emin olunuz.";
                var model = _altMenu.Get();
                return View(model);
            }
        }
    }
}