namespace Blog_Guitar.Model.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TapTin")]
    public partial class TapTin
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TapTin()
        {
            CaSis = new HashSet<CaSi>();
            TacGias = new HashSet<TacGia>();
            TheLoaiNhacs = new HashSet<TheLoaiNhac>();
        }

        public int id { get; set; }

        public int id_LoaiTapTin { get; set; }

        [StringLength(150)]
        public string TieuDe { get; set; }

        [StringLength(250)]
        public string MoTa { get; set; }

        public string DuongDan { get; set; }

        [StringLength(250)]
        public string TenTapTin { get; set; }

        [StringLength(250)]
        public string DinhDang { get; set; }

        public double? DungLuong { get; set; }

        [StringLength(250)]
        public string TenDinhDang { get; set; }

        public int? LuotTai { get; set; }

        public DateTime? NgayTao { get; set; }

        public bool? TrangThai { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CaSi> CaSis { get; set; }

        public virtual LoaiTapTin LoaiTapTin { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TacGia> TacGias { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TheLoaiNhac> TheLoaiNhacs { get; set; }
    }
}
