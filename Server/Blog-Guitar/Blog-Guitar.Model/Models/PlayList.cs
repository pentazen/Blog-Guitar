namespace Blog_Guitar.Model.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("PlayList")]
    public partial class PlayList
    {
        public int id { get; set; }

        [StringLength(150)]
        public string TenPlaylist { get; set; }

        public int? id_ThanhVienSoHuu { get; set; }

        public DateTime? NgayTao { get; set; }

        public DateTime? NgayCapNhat { get; set; }

        public bool? TrangThai { get; set; }

        public virtual ThanhVien ThanhVien { get; set; }
    }
}
