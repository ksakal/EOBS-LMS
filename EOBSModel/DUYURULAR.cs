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
    
    public partial class DUYURULAR
    {
        public DUYURULAR()
        {
            this.ARA_TBL1 = new HashSet<ARA_TBL1>();
        }
    
        public int DYR_ID { get; set; }
        public string DYR_AD { get; set; }
        public string DYR_METIN { get; set; }
        public Nullable<int> HFT_ID { get; set; }
        public Nullable<int> OKL_ID { get; set; }
        public string SUB_ADS { get; set; }
        public Nullable<int> KUL_ID { get; set; }
        public Nullable<System.DateTime> DRY_TAR { get; set; }
    
        public virtual ICollection<ARA_TBL1> ARA_TBL1 { get; set; }
        public virtual HAFTALAR HAFTALAR { get; set; }
    }
}
