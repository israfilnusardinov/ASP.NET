﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DekorasyonWebEntities : DbContext
    {
        public DekorasyonWebEntities()
            : base("name=DekorasyonWebEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Adres> Adres { get; set; }
        public virtual DbSet<AltMenu> AltMenu { get; set; }
        public virtual DbSet<CalismaSaatleri> CalismaSaatleri { get; set; }
        public virtual DbSet<Ekip> Ekip { get; set; }
        public virtual DbSet<EkipGaleri> EkipGaleri { get; set; }
        public virtual DbSet<Gunler> Gunler { get; set; }
        public virtual DbSet<Haber> Haber { get; set; }
        public virtual DbSet<HaberGaleri> HaberGaleri { get; set; }
        public virtual DbSet<HaberKategori> HaberKategori { get; set; }
        public virtual DbSet<Hizmet> Hizmet { get; set; }
        public virtual DbSet<HizmetGaleri> HizmetGaleri { get; set; }
        public virtual DbSet<HizmetKategori> HizmetKategori { get; set; }
        public virtual DbSet<HomePage> HomePage { get; set; }
        public virtual DbSet<IletisimForm> IletisimForm { get; set; }
        public virtual DbSet<Kullanici> Kullanici { get; set; }
        public virtual DbSet<Log> Log { get; set; }
        public virtual DbSet<Mail> Mail { get; set; }
        public virtual DbSet<Menu> Menu { get; set; }
        public virtual DbSet<Profil> Profil { get; set; }
        public virtual DbSet<Slider> Slider { get; set; }
        public virtual DbSet<SosyalMedya> SosyalMedya { get; set; }
        public virtual DbSet<Telefon> Telefon { get; set; }
        public virtual DbSet<Urun> Urun { get; set; }
        public virtual DbSet<UrunGaleri> UrunGaleri { get; set; }
        public virtual DbSet<UrunKategori> UrunKategori { get; set; }
    }
}