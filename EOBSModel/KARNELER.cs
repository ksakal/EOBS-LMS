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
    
    public partial class KARNELER
    {
        public KARNELER()
        {
            this.SINIFLAR = new HashSet<SINIFLAR>();
        }
    
        public int KRN_ID { get; set; }
        public string KRN_AD { get; set; }
    
        public virtual ICollection<SINIFLAR> SINIFLAR { get; set; }
    }
}