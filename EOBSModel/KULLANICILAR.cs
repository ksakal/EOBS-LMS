//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EOBSModel
{
    using System;
    using System.Collections.Generic;
    
    public partial class KULLANICILAR
    {
        public KULLANICILAR()
        {
            this.GIDENKUTUSU = new HashSet<MESAJLAR>();
            this.GELENKUTUSU = new HashSet<MESAJLAR>();
            this.OZELNOT = new HashSet<OZELNOT>();
            this.ODEVSNC = new HashSet<ODEVSNC>();
            this.ARA_TBL2 = new HashSet<ARA_TBL2>();
            this.DRSSNVSNC = new HashSet<DRSSNVSNC>();
            this.SINAVSNC = new HashSet<SINAVSNC>();
            this.RDSDERSLER = new HashSet<RDSDERSLER>();
            this.RDSLISTE = new HashSet<RDSLISTE>();
            this.KARNEDERSNOT = new HashSet<KARNEDERSNOT>();
            this.HEPTABLO = new HashSet<HEPTABLO>();
        }
    
        public int KUL_ID { get; set; }
        public string KUL_AD { get; set; }
        public string KUL_SIFRE { get; set; }
        public Nullable<bool> KUL_AKTIF { get; set; }
        public string KUL_ISIM { get; set; }
        public string KUL_SOYISIM { get; set; }
        public string KUL_TCNO { get; set; }
        public string KUL_CINSIYET { get; set; }
        public Nullable<int> KUL_NO { get; set; }
        public string KUL_VISIM { get; set; }
        public string KUL_VSOYISIM { get; set; }
        public string KUL_TEL1 { get; set; }
        public string KUL_TEL2 { get; set; }
        public string KUL_TEL3 { get; set; }
        public Nullable<System.DateTime> KUL_OLSTAR { get; set; }
        public Nullable<System.DateTime> KUL_GRSTAR { get; set; }
        public Nullable<System.DateTime> KUL_EXPTAR { get; set; }
        public Nullable<short> YTK_ID { get; set; }
        public Nullable<int> OKL_ID { get; set; }
        public Nullable<int> SNF_ID { get; set; }
        public Nullable<int> SUB_ID { get; set; }
        public Nullable<int> KUR_ID { get; set; }
        public Nullable<int> RE1_ID { get; set; }
        public Nullable<int> RE2_ID { get; set; }
        public Nullable<int> RE3_ID { get; set; }
        public Nullable<int> BRS_ID { get; set; }
        public string KUL_TEMP { get; set; }
        public string KUL_ADSOYAD { get; set; }
        public Nullable<short> KUL_DAVNOT { get; set; }
    
        public virtual KURLAR KURLAR { get; set; }
        public virtual SUBELER SUBELER { get; set; }
        public virtual YETKILER YETKILER { get; set; }
        public virtual ICollection<MESAJLAR> GIDENKUTUSU { get; set; }
        public virtual ICollection<MESAJLAR> GELENKUTUSU { get; set; }
        public virtual BRANSLAR BRANSLAR { get; set; }
        public virtual ICollection<OZELNOT> OZELNOT { get; set; }
        public virtual ICollection<ODEVSNC> ODEVSNC { get; set; }
        public virtual ICollection<ARA_TBL2> ARA_TBL2 { get; set; }
        public virtual ICollection<DRSSNVSNC> DRSSNVSNC { get; set; }
        public virtual ICollection<SINAVSNC> SINAVSNC { get; set; }
        public virtual ICollection<RDSDERSLER> RDSDERSLER { get; set; }
        public virtual ICollection<RDSLISTE> RDSLISTE { get; set; }
        public virtual ICollection<KARNEDERSNOT> KARNEDERSNOT { get; set; }
        public virtual OKULLAR OKULLAR { get; set; }
        public virtual ICollection<HEPTABLO> HEPTABLO { get; set; }
    }
}
