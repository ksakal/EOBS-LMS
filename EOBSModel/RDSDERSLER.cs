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
    
    public partial class RDSDERSLER
    {
        public RDSDERSLER()
        {
            this.RDSLISTE = new HashSet<RDSLISTE>();
        }
    
        public int RDS_ID { get; set; }
        public Nullable<int> KUL_ID { get; set; }
        public string RDS_KONU { get; set; }
        public Nullable<int> SNF_ID { get; set; }
        public Nullable<int> DRS_ID { get; set; }
        public string RDS_YER { get; set; }
        public Nullable<short> RDS_KONT { get; set; }
        public Nullable<short> RDS_KONTBOS { get; set; }
        public Nullable<System.DateTime> RDS_EKLTAR { get; set; }
        public Nullable<bool> RDS_AKTIF { get; set; }
        public string RDS_ZAMAN { get; set; }
    
        public virtual KULLANICILAR KULLANICILAR { get; set; }
        public virtual SINIFLAR SINIFLAR { get; set; }
        public virtual ICollection<RDSLISTE> RDSLISTE { get; set; }
        public virtual DERSLER DERSLER { get; set; }
    }
}
