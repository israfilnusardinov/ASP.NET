//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Dekorasyon.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class CalismaSaatleri
    {
        public int Id { get; set; }
        public string AcilisSaat { get; set; }
        public string KapanisSaat { get; set; }
        public int GunId { get; set; }
    
        public virtual Gunler Gunler { get; set; }
    }
}
