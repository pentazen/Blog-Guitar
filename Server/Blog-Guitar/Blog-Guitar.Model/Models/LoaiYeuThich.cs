namespace Blog_Guitar.Model.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("LoaiYeuThich")]
    public partial class LoaiYeuThich
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public LoaiYeuThich()
        {
            YeuThiches = new HashSet<YeuThich>();
        }

        public int id { get; set; }

        [StringLength(150)]
        public string TenLoaiYeuThich { get; set; }

        [StringLength(250)]
        public string GhiChu { get; set; }

        public DateTime? NgayTao { get; set; }

        public bool? TrangThai { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<YeuThich> YeuThiches { get; set; }
    }
}
