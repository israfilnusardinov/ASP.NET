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
    public class HomeController : Controller
    {
        MenuBLL _menu = new MenuBLL();
        AltMenuBLL _altmenu = new AltMenuBLL();
        SliderBLL _slider = new SliderBLL();
        // GET: Admin/Home
        public ActionResult Index()
        {
            var model = _menu.Get(Size: 10, Order: "desc", Sort: "Id");
            ViewBag.AltMenu = _altmenu.Get(Size: 5, Order: "desc", Sort: "Id");
            ViewBag.Slider = _slider.Get(Size: 5, Order: "desc", Sort: "Id");
            return View(model);
        }
        public PartialViewResult Footer()
        {
            return PartialView();
        }
        public PartialViewResult TopNavbar()
        {
            return PartialView();
        }
        public PartialViewResult LeftNavbar()
        {
            return PartialView();
        }
    }
}