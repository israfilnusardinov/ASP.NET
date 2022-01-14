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
    public class IletisimFormController : Controller
    
        
    {
        IletisimFormBLL _iletisim = new IletisimFormBLL();
        // GET: yonet/Menu
        public ActionResult Index()
        {
            var model = _iletisim.Get();
            return View(model);
        }
        public ActionResult Detay(int Id = 0)
        {
            var model = _iletisim.GetById(Id);
            model.Durum = 1;
            _iletisim.Update(model);
            return View(model);
        }
        [HttpPost]
        public ActionResult Index(int[] cbSec)
        {
            try
            {
                for (int i = 0; i < cbSec.Length; i++)
                {
                    _iletisim.Delete(cbSec[i]);
                    ViewBag.Mesaj = cbSec.Length + " " + "Kayıt Silindi.";
                }

            }
            catch (Exception)
            {

                ViewBag.Hata = "Lütfen Bağlı Alt Menüleri Siliniz";
            }
            var model = _iletisim.GetAll();
            return View(model);
        }
    }
}
