namespace Blog_Guitar.Model.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("BinhLuan")]
    public partial class BinhLuan
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public BinhLuan()
        {
            BinhLuan1 = new HashSet<BinhLuan>();
        }

        public int id { get; set; }

        public int? id_ThanhVienBinhLuan { get; set; }

        public string NoiDungBinhLuan { get; set; }

        public DateTime? NgayTao { get; set; }

        public int? id_BinhLuanCha { get; set; }

        public int? ThuBac { get; set; }

        public bool? TrangThai { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BinhLuan> BinhLuan1 { get; set; }

        public virtual BinhLuan BinhLuan2 { get; set; }

        public virtual ThanhVien ThanhVien { get; set; }
    }
}
