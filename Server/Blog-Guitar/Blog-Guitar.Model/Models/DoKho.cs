namespace Blog_Guitar.Model.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DoKho")]
    public partial class DoKho
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DoKho()
        {
            BaiHats = new HashSet<BaiHat>();
        }

        public int id { get; set; }

        [StringLength(150)]
        public string TenDoKho { get; set; }

        public string MoTa { get; set; }

        public DateTime? NgayTao { get; set; }

        public bool? TrangThai { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BaiHat> BaiHats { get; set; }
    }
}
