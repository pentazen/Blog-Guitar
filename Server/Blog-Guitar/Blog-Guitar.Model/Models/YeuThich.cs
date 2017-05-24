namespace Blog_Guitar.Model.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("YeuThich")]
    public partial class YeuThich
    {
        public int id { get; set; }

        public int? id_LoaiYeuThich { get; set; }

        public int? id_ThanhVien { get; set; }

        public DateTime? NgayTao { get; set; }

        public virtual LoaiYeuThich LoaiYeuThich { get; set; }

        public virtual ThanhVien ThanhVien { get; set; }
    }
}
