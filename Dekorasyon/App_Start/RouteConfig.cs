using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace Dekorasyon
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
              name: "iletisim",
              url: "iletisim/{action}",
              defaults: new { controller = "iletisim", action = "Index" },
              namespaces: new[] { "Dekorasyon.Controllers" }
          );

            routes.MapRoute(
               name: "Menuyol",
               url: "{seolink}",
               defaults: new { controller = "Home", action = "Index", seolink = UrlParameter.Optional },
               namespaces: new[] { "Dekorasyon.Controllers" }
           );

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional },
                 namespaces: new[] { "Dekorasyon.Controllers" }
            );
        }
    }
}
