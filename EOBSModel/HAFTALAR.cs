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
    
    public partial class HAFTALAR
    {
        public HAFTALAR()
        {
            this.DAMLACIKLAR = new HashSet<DAMLACIKLAR>();
            this.ARA_TBL1 = new HashSet<ARA_TBL1>();
            this.DUYURULAR = new HashSet<DUYURULAR>();
            this.ODEVLER = new HashSet<ODEVLER>();
            this.SINAVLAR = new HashSet<SINAVLAR>();
        }
    
        public int HFT_ID { get; set; }
        public string HFT_AD { get; set; }
        public string HFT_DETAY { get; set; }
        public Nullable<System.DateTime> HFT_BITTAR { get; set; }
        public Nullable<bool> HFT_IZINVELI { get; set; }
        public Nullable<bool> HFT_AKTIF { get; set; }
    
        public virtual ICollection<DAMLACIKLAR> DAMLACIKLAR { get; set; }
        public virtual ICollection<ARA_TBL1> ARA_TBL1 { get; set; }
        public virtual ICollection<DUYURULAR> DUYURULAR { get; set; }
        public virtual ICollection<ODEVLER> ODEVLER { get; set; }
        public virtual ICollection<SINAVLAR> SINAVLAR { get; set; }
    }
}
