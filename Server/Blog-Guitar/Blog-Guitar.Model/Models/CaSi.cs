namespace Blog_Guitar.Model.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CaSi")]
    public partial class CaSi
    {
        public int id { get; set; }

        [StringLength(150)]
        public string TenCaSi { get; set; }

        public DateTime? NTNS { get; set; }

        public string TieuSu { get; set; }

        public int? id_TapTinAnhDaiDien { get; set; }

        public DateTime? NgayTao { get; set; }

        public DateTime? NgaySua { get; set; }

        public int? id_ThanhVienSua { get; set; }

        public bool? TrangThai { get; set; }

        public virtual TapTin TapTin { get; set; }

        public virtual ThanhVien ThanhVien { get; set; }
    }
}
