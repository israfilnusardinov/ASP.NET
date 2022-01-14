using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Dekorasyon.Models;
using Dekorasyon.Kll;

namespace Dekorasyon.Areas.Admin.Controllers
{
    public class LoginController : Controller
    {
        KullaniciBLL _kullanici = new KullaniciBLL();
        LogBLL _log = new LogBLL();
        // GET: yonet/Login
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Index(Log model,string KullaniciAdi, string Sifre)
        {
            var gkk = _kullanici.GetFirstOrDefault(k => k.UserName == KullaniciAdi && k.UserPassword == Sifre);
            if (gkk != null)
            {
                Session["Login"] = gkk;
                ViewBag.LoginSucces = "Giriş Başarılı Lütfen Bekleyinizi Sayfaya Yönlendiriliyorsunuz";
                model.Username = gkk.UserName;
                model.Tarih = DateTime.Now;
                _log.Insert(model);
                return RedirectToAction("Index", "Home");
            }
            else
            {
                ViewBag.KullaniciBulunamadi = "Kullanici Bulunamadi";
            }
            return View();
        }
        public ActionResult GuvenliCikis()
        {
            Session["Login"] = null;
            Session.Abandon();
            return RedirectToAction("Index", "Login");
        }
    }
}