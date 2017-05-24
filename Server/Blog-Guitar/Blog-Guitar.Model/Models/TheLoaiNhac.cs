namespace Blog_Guitar.Model.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TheLoaiNhac")]
    public partial class TheLoaiNhac
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TheLoaiNhac()
        {
            BaiHats = new HashSet<BaiHat>();
        }

        public int id { get; set; }

        [StringLength(150)]
        public string TenLoaiNhac { get; set; }

        public int? id_TapTinAnhNen { get; set; }

        public DateTime? NgayTao { get; set; }

        public bool? TrangThai { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BaiHat> BaiHats { get; set; }

        public virtual TapTin TapTin { get; set; }
    }
}
