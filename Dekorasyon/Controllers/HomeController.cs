using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Dekorasyon.Models;
using Dekorasyon.Kll;

namespace Dekorasyon.Controllers
{
    public class HomeController : Controller
    {
        MenuBLL _menu = new MenuBLL();
        AltMenuBLL _altmenu = new AltMenuBLL();
        SliderBLL _slider = new SliderBLL();
        UrunBLL _urun = new UrunBLL();
        UrunKategoriBLL _urunkategori = new UrunKategoriBLL();
        HizmetBLL _hizmet = new HizmetBLL();
        HizmetKategoriBLL _hizmetkategori = new HizmetKategoriBLL();
        HaberBLL _haber = new HaberBLL();
        HaberKategoriBLL _haberkategori = new HaberKategoriBLL();
        AdresBLL _adres = new AdresBLL();
        TelefonBLL _telefon = new TelefonBLL();
        MailBLL _mail = new MailBLL();
        SosyalMedyaBLL _sosyalmedya = new SosyalMedyaBLL();
        AnasayfaBLL _anasayfa = new AnasayfaBLL();
        // GET: Home
        public ActionResult Index(string seolink )
        {
            ViewBag.HizmetHomePage = _hizmet.Get(Order: "asc", Sort: "SiraNo", Size: 4);
            ViewBag.UrunKategoriPegeUrun = _urun.Get();
            ViewBag.HizmetKategoriPegeHizmet = _hizmet.Get();
            ViewBag.HomePage = _anasayfa.Get(Size: 1);
            ViewBag.HomaPageUrun = _urun.Get(Order: "desc", Sort: "Id", Size: 8);
            ViewBag.HomaPageHizmet = _hizmet.Get(Order: "desc", Sort: "Id", Size: 6);

            if (seolink == null)
            {
                return View();
            }
            
            else
            {
                var MenuKontrol = _menu.GetFirstOrDefault(m => m.SEOLink == seolink);
                var AltMenuKontrol = _altmenu.GetFirstOrDefault(a => a.SEOLink == seolink);
                var SliderKontrol = _slider.GetFirstOrDefault(s => s.SEOLink == seolink);
                var UrunKontrol = _urun.GetFirstOrDefault(u => u.SEOLink == seolink);
                var UrunKategoriKontrol = _urunkategori.GetFirstOrDefault(uk => uk.SEOLink == seolink);
                var HizmetKontrol = _hizmet.GetFirstOrDefault(h => h.SEOLink == seolink);
                var HizmetKategoriKontrol = _hizmetkategori.GetFirstOrDefault(hk => hk.SEOLink == seolink);
                var HaberKontrol = _haber.GetFirstOrDefault(ha => ha.SEOLink == seolink);
                var HaberKategoriKontrol = _haberkategori.GetFirstOrDefault(hak => hak.SEOLink == seolink);

                if (MenuKontrol != null)
                {
                    return View("MenuDetay", MenuKontrol);
                }
                if (AltMenuKontrol != null)
                {
                    return View("AltMenuDetay", AltMenuKontrol);
                }
                if (SliderKontrol != null)
                {
                    return View("SliderDetay", SliderKontrol);
                }
                if (UrunKontrol != null)
                {
                    return View("UrunDetay", UrunKontrol);
                }
                if (UrunKategoriKontrol != null)
                {
                    return View("UrunKategoriDetay", UrunKategoriKontrol);
                }
                if (HizmetKontrol != null)
                {
                    return View("HizmetDetay", HizmetKontrol);
                }
                if (HizmetKategoriKontrol != null)
                {
                    return View("HizmetKategoriDetay", HizmetKategoriKontrol);
                }
                if (HaberKontrol != null)
                {
                    return View("HaberDetay", HaberKontrol);
                }
                if (HaberKategoriKontrol != null)
                {
                    return View("HaberKategoriDetay", HaberKategoriKontrol);
                }
                else
                {
                    return View("SayfaBulunamadi");
                }  
            }
        }
        public PartialViewResult Header()
        {
            var model = _menu.Get(m => m.Durum == Sabitler.AKTIF, Order: "asc", Sort: "SiraNo");
            ViewBag.AltMenu = _altmenu.Get(m => m.Durum == Sabitler.AKTIF, Order: "asc", Sort: "SiraNo");
            ViewBag.HizmetKategori = _hizmetkategori.Get(Order: "asc", Sort: "SiraNo");
            ViewBag.UrunKategori = _urunkategori.Get(Order: "asc", Sort: "SiraNo");
            ViewBag.SosyalMedya = _sosyalmedya.Get();
            ViewBag.Mail = _mail.Get();
            ViewBag.Telefon = _telefon.Get();
            return PartialView(model);
        }
        public PartialViewResult Footer()
        {
            ViewBag.Telefon = _telefon.Get(Order: "asc", Sort: "SiraNo");
            ViewBag.Adres = _adres.Get(Order: "asc", Sort: "SiraNo");
            ViewBag.Mail = _mail.Get(Order: "asc", Sort: "SiraNo");
            var model = _sosyalmedya.Get(Size: 1);
            return PartialView(model);
        }
        public PartialViewResult Slider()
        {
            var model = _slider.Get(m => m.Durum == Sabitler.AKTIF, Order: "asc", Sort: "SiraNo");
            return PartialView(model);
        }

    }
}