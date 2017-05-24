namespace Blog_Guitar.Model.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NhacCu")]
    public partial class NhacCu
    {
        public int id { get; set; }

        [StringLength(250)]
        public string TenNhacCu { get; set; }

        public string TieuSu { get; set; }

        public DateTime? NgayTao { get; set; }

        public bool? TrangThai { get; set; }
    }
}
