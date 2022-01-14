using Dekorasyon.Models;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Text.RegularExpressions;
using System.Web;

namespace Dekorasyon.Kll
{
    public class GenelAraclar
    {

        public static string GorselAdiBul(string path, string filename, string baslik = "")
        {
            string[] parcala = filename.Split('.');
            string uzanti = "." + parcala[parcala.Length - 1];
            string name = filename.Substring(0, filename.Length - uzanti.Length);
            if (baslik != "")
            {
                name = baslik;
            }
            bool sonuc = true;
            int sayac = 0;
            string yeniisim = "hata";
            while (sonuc)
            {
                if (sayac == 0)
                {
                    string[] filePaths = Directory.GetFiles(path, name + uzanti);
                    if (filePaths.Length > 0)
                    {
                        sayac++;
                    }
                    else
                    {
                        yeniisim = name + uzanti;
                        break;
                    }

                }
                else
                {
                    string[] filePaths = Directory.GetFiles(path, name + sayac + uzanti);
                    if (filePaths.Length > 0)
                    {
                        sayac++;
                    }
                    else
                    {
                        yeniisim = name + sayac + uzanti;
                        break;
                    }
                }
            }
            return yeniisim;
        }
        public static string SEOLink(string s)
        {
            s = s.ToLower();
            s = s.Replace("ü", "u")
                .Replace("ı", "i")
                .Replace("ğ", "g")
                .Replace("ö", "o")
                .Replace("ş", "s")
                .Replace("ç", "c")
                .Replace(" ", "-");

            s = Regex.Replace(s, @"[^a-z0-9\s-]", "-");
            s = Regex.Replace(s, @"\s+", " ").Trim();
            s = Regex.Replace(s, @"\s", "-");
            s = s.Replace("---", "-");
            s = s.Replace("--", "-");

            return s;
        }
        public static string KucukHarf(string k)
        {
            k = k.ToLower();
            return k;
        }
        public static string AyBilgisi(int Ay)
        {
            string[] aylar = {"","Ocak","Şubat","Mart","Nisan","Mayıs","Haziran","Temmuz","Ağustos","Eylük","Ekim","Kasım","Aralık" };
            return aylar[Ay];
        }
    }
}