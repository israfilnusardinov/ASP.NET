using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Dekorasyon.Models;
using Dekorasyon.Kll;

namespace Dekorasyon.Controllers
{
    public class IletisimController : Controller
    {
        IletisimFormBLL _iletisimform = new IletisimFormBLL();
        AdresBLL _adres = new AdresBLL();
        TelefonBLL _telefon = new TelefonBLL();
        MailBLL _mail = new MailBLL();
        // GET: iletisim
        public ActionResult Index(string iletisim,int Id=0)
        {
            ViewBag.Telefon = _telefon.Get(Order: "asc", Sort: "SiraNo");
            ViewBag.Adres = _adres.Get(Order: "asc", Sort: "SiraNo");
            ViewBag.Mail = _mail.Get(Order: "asc", Sort: "SiraNo");
            var model = _iletisimform.GetById(Id);
            return View();
        }
        [ValidateInput(false)]
        [HttpPost]
        public ActionResult Index(IletisimForm model)
        {
            try
            {
                model.Durum = Sabitler.OKUNMADI;
                model.Tarih = DateTime.Now;
                _iletisimform.Insert(model);
                ViewBag.Basarili = "Mesaj alindi";
            }
            catch (Exception)
            {

                ViewBag.Hata = "Mesaj Alinmadi";
            }
            ViewBag.Telefon = _telefon.Get(Order: "asc", Sort: "SiraNo");
            ViewBag.Adres = _adres.Get(Order: "asc", Sort: "SiraNo");
            ViewBag.Mail = _mail.Get(Order: "asc", Sort: "SiraNo");
            return View();
        }
    }
}