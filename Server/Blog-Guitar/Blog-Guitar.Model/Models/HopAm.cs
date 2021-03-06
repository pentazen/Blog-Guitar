namespace Blog_Guitar.Model.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("HopAm")]
    public partial class HopAm
    {
        public int id { get; set; }

        [StringLength(50)]
        public string TenHopAm { get; set; }

        [StringLength(50)]
        public string KyHieuHopAm { get; set; }

        public DateTime? NgayTao { get; set; }

        public bool? TrangThai { get; set; }
    }
}
