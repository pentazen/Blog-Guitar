namespace Blog_Guitar.Model.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Nhan")]
    public partial class Nhan
    {
        public int id { get; set; }

        [StringLength(150)]
        public string TenNhan { get; set; }

        [StringLength(150)]
        public string TenNhanKhongDau { get; set; }

        public DateTime? NgayTao { get; set; }

        public bool? TrangThai { get; set; }
    }
}
