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
    public class MenuController : Controller
    {
        MenuBLL _menu = new MenuBLL();
        // GET: yonet/Menu
        public ActionResult Index()
        {
            var model = _menu.Get(Order: "asc", Sort: "Baslik");
            return View(model);
        }
        public ActionResult Detay(int Id = 0)
        {
            var model = _menu.GetById(Id);
            return View(model);
        }
        [ValidateInput(false)]
        [HttpPost]
        public ActionResult Detay(Menu model)
        {
            try
            {
                model.SEOLink = GenelAraclar.SEOLink(model.Baslik);
                _menu.InsertOrUpdate(model, model.Id);
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
                    _menu.Delete(cbSec[i]);
                    ViewBag.Mesaj = cbSec.Length + " " + "Kayıt Silindi.";
                }

            }
            catch (Exception)
            {

                ViewBag.Hata = "Lütfen Bağlı Alt Menüleri Siliniz";
            }
            var model = _menu.GetAll();
            return View(model);
        }
    }
}