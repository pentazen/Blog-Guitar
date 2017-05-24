namespace Blog_Guitar.Model.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CauTrucHopAm")]
    public partial class CauTrucHopAm
    {
        public int id { get; set; }

        [StringLength(50)]
        public string NotSoMot { get; set; }

        [StringLength(50)]
        public string NotSoHai { get; set; }

        [StringLength(50)]
        public string NotSoBa { get; set; }

        [StringLength(50)]
        public string NotSoBon { get; set; }

        [StringLength(50)]
        public string NotSoNam { get; set; }

        [StringLength(50)]
        public string NotSoSau { get; set; }

        [StringLength(50)]
        public string NotSoBay { get; set; }

        public int? NganDanThu { get; set; }

        public int? ViTriNotDayMot { get; set; }

        public int? ViTriNotDayHai { get; set; }

        public int? ViTriNotDayBa { get; set; }

        public int? ViTriNotDayBon { get; set; }

        public int? ViTriNotDayNam { get; set; }

        public int? ViTriNotDaySau { get; set; }

        public int? ViTriNgonTayThuMot { get; set; }

        public int? ViTriNgonTayThuHai { get; set; }

        public int? ViTriNgonTayThuBa { get; set; }

        public int? ViTriNgonTayThuTu { get; set; }

        public int? ViTriNgonTayThuNam { get; set; }

        public DateTime? NgayTao { get; set; }

        public bool? TrangThai { get; set; }
    }
}
