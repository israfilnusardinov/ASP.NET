using System.Web;
using System.Web.Mvc;

namespace Dekorasyon.Kll
{
    public class SessionControlFilter : ActionFilterAttribute, IActionFilter
    {

        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            if (HttpContext.Current.Session["Login"] == null)
            {
                filterContext.Result = new RedirectResult("/Admin/Login/");
            }
        }
    }
}