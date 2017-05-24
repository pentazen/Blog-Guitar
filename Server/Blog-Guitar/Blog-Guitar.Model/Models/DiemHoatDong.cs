namespace Blog_Guitar.Model.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DiemHoatDong")]
    public partial class DiemHoatDong
    {
        public int id { get; set; }

        [StringLength(150)]
        public string TenDiemHoatDong { get; set; }

        public string GhiChu { get; set; }

        public double? SoDiem { get; set; }

        public DateTime? NgayTao { get; set; }

        public DateTime? NgaySua { get; set; }

        public int? id_ThanhVienSua { get; set; }

        public bool? TrangThai { get; set; }

        public virtual ThanhVien ThanhVien { get; set; }
    }
}
