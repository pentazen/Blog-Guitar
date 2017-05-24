namespace Blog_Guitar.Model.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("LoaiBaiViet")]
    public partial class LoaiBaiViet
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public LoaiBaiViet()
        {
            BaiViets = new HashSet<BaiViet>();
        }

        public int id { get; set; }

        [StringLength(150)]
        public string TenLoaiBaiViet { get; set; }

        [StringLength(150)]
        public string GhiChu { get; set; }

        public DateTime? NgayTao { get; set; }

        public bool? TrangThai { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BaiViet> BaiViets { get; set; }
    }
}
