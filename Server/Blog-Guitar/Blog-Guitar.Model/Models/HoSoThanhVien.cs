namespace Blog_Guitar.Model.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("HoSoThanhVien")]
    public partial class HoSoThanhVien
    {
        public int id { get; set; }

        public int? id_ThanhVien { get; set; }

        [StringLength(150)]
        public string TenDayDu { get; set; }

        [StringLength(150)]
        public string TenKhac { get; set; }

        public int? GioiTinh { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NTNS { get; set; }

        [StringLength(150)]
        public string DienThoaiLienLac { get; set; }

        public string LinkFacebook { get; set; }

        public string LinkYoutube { get; set; }

        public string TuGioiThieu { get; set; }

        [StringLength(150)]
        public string TonGiao { get; set; }

        public string TrichDanYeuThich { get; set; }

        [StringLength(150)]
        public string NoiSinh { get; set; }

        [StringLength(250)]
        public string GhiChu { get; set; }

        public DateTime? NgayTao { get; set; }

        public DateTime? NgaySua { get; set; }

        public bool? TrangThai { get; set; }

        public virtual ThanhVien ThanhVien { get; set; }
    }
}
