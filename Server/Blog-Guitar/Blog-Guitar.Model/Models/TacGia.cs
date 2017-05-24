namespace Blog_Guitar.Model.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TacGia")]
    public partial class TacGia
    {
        public int id { get; set; }

        [StringLength(150)]
        public string TenTacGia { get; set; }

        public DateTime? NTNS { get; set; }

        public string TieuSu { get; set; }

        public int? id_TapTinAnhDaiDien { get; set; }

        public DateTime? NgayTao { get; set; }

        public bool? TrangThai { get; set; }

        public virtual TapTin TapTin { get; set; }
    }
}
