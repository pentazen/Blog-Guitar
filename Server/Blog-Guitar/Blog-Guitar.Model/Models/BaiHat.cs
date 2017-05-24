namespace Blog_Guitar.Model.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BaiHat")]
    public partial class BaiHat
    {
        public int id { get; set; }

        [StringLength(150)]
        public string TenBaiHat { get; set; }

        [StringLength(150)]
        public string TenBaiHatKhongDau { get; set; }

        public string NoiDung { get; set; }

        [StringLength(150)]
        public string DanhSachHopAm { get; set; }

        public int? id_TheLoaiNhac { get; set; }

        public int? LuotXem { get; set; }

        public string LinkNhac { get; set; }

        public DateTime? NgayTao { get; set; }

        public DateTime? NgayDuyet { get; set; }

        public int? id_ThanhVienUp { get; set; }

        [StringLength(150)]
        public string Tong { get; set; }

        public int? id_DoKho { get; set; }

        public int? id_ThanhVienDuyet { get; set; }

        public DateTime? NgayChinhSua { get; set; }

        public int? id_ThanhVienChinhSua { get; set; }

        public string GhiChu { get; set; }

        public bool? TrangThai { get; set; }

        public virtual DoKho DoKho { get; set; }

        public virtual ThanhVien ThanhVien { get; set; }

        public virtual ThanhVien ThanhVien1 { get; set; }

        public virtual ThanhVien ThanhVien2 { get; set; }

        public virtual TheLoaiNhac TheLoaiNhac { get; set; }
    }
}
