namespace Blog_Guitar.Model.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Dieu")]
    public partial class Dieu
    {
        public int id { get; set; }

        [StringLength(150)]
        public string TenDieu { get; set; }

        public bool? TrangThai { get; set; }
    }
}
