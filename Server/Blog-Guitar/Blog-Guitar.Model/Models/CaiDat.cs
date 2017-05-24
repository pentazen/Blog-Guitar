namespace Blog_Guitar.Model.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CaiDat")]
    public partial class CaiDat
    {
        public int id { get; set; }

        [StringLength(150)]
        public string TenCaiDat { get; set; }

        [StringLength(250)]
        public string MoTa { get; set; }

        public int? GiaTri { get; set; }

        public bool? TrangThai { get; set; }
    }
}
