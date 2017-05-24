namespace Blog_Guitar.Model.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("ThanhVien")]
    public partial class ThanhVien
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ThanhVien()
        {
            BaiHats = new HashSet<BaiHat>();
            BaiHats1 = new HashSet<BaiHat>();
            BaiHats2 = new HashSet<BaiHat>();
            BaiViets = new HashSet<BaiViet>();
            BaiViets1 = new HashSet<BaiViet>();
            BinhLuans = new HashSet<BinhLuan>();
            CaSis = new HashSet<CaSi>();
            ChuDes = new HashSet<ChuDe>();
            DiemHoatDongs = new HashSet<DiemHoatDong>();
            HoSoThanhViens = new HashSet<HoSoThanhVien>();
            PlayLists = new HashSet<PlayList>();
            YeuThiches = new HashSet<YeuThich>();
        }

        public int id { get; set; }

        public int id_LoaiThanhVien { get; set; }

        [StringLength(150)]
        public string TaiKhoan { get; set; }

        [StringLength(150)]
        public string MatKhau { get; set; }

        public string MatKhauMaHoa { get; set; }

        [StringLength(150)]
        public string Email { get; set; }

        public bool? EmailXacNhan { get; set; }

        public DateTime? LanDangNhapCuoi { get; set; }

        public DateTime? LanDangXuatCuoi { get; set; }

        public DateTime? NgayTao { get; set; }

        public bool? TrangThai { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BaiHat> BaiHats { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BaiHat> BaiHats1 { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BaiHat> BaiHats2 { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BaiViet> BaiViets { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BaiViet> BaiViets1 { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BinhLuan> BinhLuans { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CaSi> CaSis { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChuDe> ChuDes { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DiemHoatDong> DiemHoatDongs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<HoSoThanhVien> HoSoThanhViens { get; set; }

        public virtual LoaiThanhVien LoaiThanhVien { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PlayList> PlayLists { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<YeuThich> YeuThiches { get; set; }
    }
}
