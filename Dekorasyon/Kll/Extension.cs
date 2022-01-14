using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Dekorasyon.Models;

namespace Dekorasyon.Kll
{
    public static class Extension
    {
        public static string TurkceTarih(this DateTime datetime)
        {
            return datetime.Day + " " + GenelAraclar.AyBilgisi(datetime.Month) + " " + datetime.Year;
        }
    }
}