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
    
    public partial class KURLAR
    {
        public KURLAR()
        {
            this.KULLANICILAR = new HashSet<KULLANICILAR>();
        }
    
        public int KUR_ID { get; set; }
        public string KUR_AD { get; set; }
        public Nullable<int> KUR_SIRA { get; set; }
        public Nullable<int> SNF_ID { get; set; }
        public Nullable<int> OKL_ID { get; set; }
    
        public virtual ICollection<KULLANICILAR> KULLANICILAR { get; set; }
        public virtual SINIFLAR SINIFLAR { get; set; }
        public virtual OKULLAR OKULLAR { get; set; }
    }
}