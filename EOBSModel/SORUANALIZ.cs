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
    
    public partial class SORUANALIZ
    {
        public int SOR_ID { get; set; }
        public Nullable<int> SNV_ID { get; set; }
        public Nullable<int> DRS_ID { get; set; }
        public Nullable<short> SOR_NO { get; set; }
        public Nullable<decimal> SOR_GUCDER { get; set; }
        public string SOR_GUCYRM { get; set; }
        public Nullable<decimal> SOR_AGUCDER { get; set; }
        public string SOR_AGUCYRM { get; set; }
        public string SOR_DCVP { get; set; }
        public Nullable<short> SOR_CVPA { get; set; }
        public Nullable<decimal> SOR_GUCA { get; set; }
        public Nullable<short> SOR_CVPB { get; set; }
        public Nullable<decimal> SOR_GUCB { get; set; }
        public Nullable<short> SOR_CVPC { get; set; }
        public Nullable<decimal> SOR_GUCC { get; set; }
        public Nullable<short> SOR_CVPD { get; set; }
        public Nullable<decimal> SOR_GUCD { get; set; }
        public Nullable<short> SOR_CVPE { get; set; }
        public Nullable<decimal> SOR_GUCE { get; set; }
        public Nullable<short> SOR_BOS { get; set; }
    
        public virtual DERSLER DERSLER { get; set; }
        public virtual SINAVLAR SINAVLAR { get; set; }
    }
}
