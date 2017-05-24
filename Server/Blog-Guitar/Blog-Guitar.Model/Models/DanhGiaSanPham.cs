namespace Blog_Guitar.Model.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DanhGiaSanPham")]
    public partial class DanhGiaSanPham
    {
        public int id { get; set; }

        public int? id_ThanhVien { get; set; }

        public int? id_SanPham { get; set; }

        public string NoiDungDanhGia { get; set; }

        public double? Diem { get; set; }

        public DateTime? NgayTao { get; set; }

        public bool? TrangThai { get; set; }
    }
}
