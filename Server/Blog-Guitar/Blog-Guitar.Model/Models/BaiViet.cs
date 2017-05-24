namespace Blog_Guitar.Model.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BaiViet")]
    public partial class BaiViet
    {
        public int id { get; set; }

        public int? id_ChuDe { get; set; }

        public int? id_LoaiBaiViet { get; set; }

        [StringLength(150)]
        public string TieuDeBaiViet { get; set; }

        public string NoiDungBaiViet { get; set; }

        public int? id_ThanhVienViet { get; set; }

        public int? LuotXem { get; set; }

        public DateTime? NgayTao { get; set; }

        public int? id_ThanhVienDuyet { get; set; }

        public bool? TrangThai { get; set; }

        public virtual ChuDe ChuDe { get; set; }

        public virtual LoaiBaiViet LoaiBaiViet { get; set; }

        public virtual ThanhVien ThanhVien { get; set; }

        public virtual ThanhVien ThanhVien1 { get; set; }
    }
}
