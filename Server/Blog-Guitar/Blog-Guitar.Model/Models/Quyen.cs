namespace Blog_Guitar.Model.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Quyen")]
    public partial class Quyen
    {
        public int id { get; set; }

        [StringLength(150)]
        public string TenQuyen { get; set; }

        public string NoiDung { get; set; }

        public int? GiaTri { get; set; }

        public DateTime? NgayTao { get; set; }

        public bool? TrangThai { get; set; }
    }
}
