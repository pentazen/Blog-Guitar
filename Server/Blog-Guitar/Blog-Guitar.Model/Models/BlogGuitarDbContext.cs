namespace Blog_Guitar.Model.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class BlogGuitarDbContext : DbContext
    {
        public BlogGuitarDbContext()
            : base("name=BlogGuitarDbContext")
        {
            this.Configuration.LazyLoadingEnabled = false;
        }

        public virtual DbSet<BaiHat> BaiHats { get; set; }
        public virtual DbSet<BaiViet> BaiViets { get; set; }
        public virtual DbSet<BinhLuan> BinhLuans { get; set; }
        public virtual DbSet<CaiDat> CaiDats { get; set; }
        public virtual DbSet<CaSi> CaSis { get; set; }
        public virtual DbSet<CauTrucHopAm> CauTrucHopAms { get; set; }
        public virtual DbSet<ChuDe> ChuDes { get; set; }
        public virtual DbSet<DanhGiaSanPham> DanhGiaSanPhams { get; set; }
        public virtual DbSet<DiemHoatDong> DiemHoatDongs { get; set; }
        public virtual DbSet<Dieu> Dieux { get; set; }
        public virtual DbSet<DoKho> DoKhoes { get; set; }
        public virtual DbSet<HopAm> HopAms { get; set; }
        public virtual DbSet<HoSoThanhVien> HoSoThanhViens { get; set; }
        public virtual DbSet<LoaiBaiViet> LoaiBaiViets { get; set; }
        public virtual DbSet<LoaiTapTin> LoaiTapTins { get; set; }
        public virtual DbSet<LoaiThanhVien> LoaiThanhViens { get; set; }
        public virtual DbSet<LoaiYeuThich> LoaiYeuThiches { get; set; }
        public virtual DbSet<NhacCu> NhacCus { get; set; }
        public virtual DbSet<Nhan> Nhans { get; set; }
        public virtual DbSet<PlayList> PlayLists { get; set; }
        public virtual DbSet<Quyen> Quyens { get; set; }
        public virtual DbSet<TacGia> TacGias { get; set; }
        public virtual DbSet<TapTin> TapTins { get; set; }
        public virtual DbSet<ThanhVien> ThanhViens { get; set; }
        public virtual DbSet<TheLoaiNhac> TheLoaiNhacs { get; set; }
        public virtual DbSet<YeuThich> YeuThiches { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<BinhLuan>()
                .HasMany(e => e.BinhLuan1)
                .WithOptional(e => e.BinhLuan2)
                .HasForeignKey(e => e.id_BinhLuanCha);

            modelBuilder.Entity<ChuDe>()
                .HasMany(e => e.BaiViets)
                .WithOptional(e => e.ChuDe)
                .HasForeignKey(e => e.id_ChuDe);

            modelBuilder.Entity<DoKho>()
                .HasMany(e => e.BaiHats)
                .WithOptional(e => e.DoKho)
                .HasForeignKey(e => e.id_DoKho);

            modelBuilder.Entity<LoaiBaiViet>()
                .HasMany(e => e.BaiViets)
                .WithOptional(e => e.LoaiBaiViet)
                .HasForeignKey(e => e.id_LoaiBaiViet);

            modelBuilder.Entity<LoaiTapTin>()
                .HasMany(e => e.TapTins)
                .WithRequired(e => e.LoaiTapTin)
                .HasForeignKey(e => e.id_LoaiTapTin)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<LoaiThanhVien>()
                .HasMany(e => e.ThanhViens)
                .WithRequired(e => e.LoaiThanhVien)
                .HasForeignKey(e => e.id_LoaiThanhVien)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<LoaiYeuThich>()
                .HasMany(e => e.YeuThiches)
                .WithOptional(e => e.LoaiYeuThich)
                .HasForeignKey(e => e.id_LoaiYeuThich);

            modelBuilder.Entity<TapTin>()
                .HasMany(e => e.CaSis)
                .WithOptional(e => e.TapTin)
                .HasForeignKey(e => e.id_TapTinAnhDaiDien);

            modelBuilder.Entity<TapTin>()
                .HasMany(e => e.TacGias)
                .WithOptional(e => e.TapTin)
                .HasForeignKey(e => e.id_TapTinAnhDaiDien);

            modelBuilder.Entity<TapTin>()
                .HasMany(e => e.TheLoaiNhacs)
                .WithOptional(e => e.TapTin)
                .HasForeignKey(e => e.id_TapTinAnhNen);

            modelBuilder.Entity<ThanhVien>()
                .HasMany(e => e.BaiHats)
                .WithOptional(e => e.ThanhVien)
                .HasForeignKey(e => e.id_ThanhVienChinhSua);

            modelBuilder.Entity<ThanhVien>()
                .HasMany(e => e.BaiHats1)
                .WithOptional(e => e.ThanhVien1)
                .HasForeignKey(e => e.id_ThanhVienDuyet);

            modelBuilder.Entity<ThanhVien>()
                .HasMany(e => e.BaiHats2)
                .WithOptional(e => e.ThanhVien2)
                .HasForeignKey(e => e.id_ThanhVienUp);

            modelBuilder.Entity<ThanhVien>()
                .HasMany(e => e.BaiViets)
                .WithOptional(e => e.ThanhVien)
                .HasForeignKey(e => e.id_ThanhVienDuyet);

            modelBuilder.Entity<ThanhVien>()
                .HasMany(e => e.BaiViets1)
                .WithOptional(e => e.ThanhVien1)
                .HasForeignKey(e => e.id_ThanhVienViet);

            modelBuilder.Entity<ThanhVien>()
                .HasMany(e => e.BinhLuans)
                .WithOptional(e => e.ThanhVien)
                .HasForeignKey(e => e.id_ThanhVienBinhLuan);

            modelBuilder.Entity<ThanhVien>()
                .HasMany(e => e.CaSis)
                .WithOptional(e => e.ThanhVien)
                .HasForeignKey(e => e.id_ThanhVienSua);

            modelBuilder.Entity<ThanhVien>()
                .HasMany(e => e.ChuDes)
                .WithOptional(e => e.ThanhVien)
                .HasForeignKey(e => e.id_ThanhVienTao);

            modelBuilder.Entity<ThanhVien>()
                .HasMany(e => e.DiemHoatDongs)
                .WithOptional(e => e.ThanhVien)
                .HasForeignKey(e => e.id_ThanhVienSua);

            modelBuilder.Entity<ThanhVien>()
                .HasMany(e => e.HoSoThanhViens)
                .WithOptional(e => e.ThanhVien)
                .HasForeignKey(e => e.id_ThanhVien);

            modelBuilder.Entity<ThanhVien>()
                .HasMany(e => e.PlayLists)
                .WithOptional(e => e.ThanhVien)
                .HasForeignKey(e => e.id_ThanhVienSoHuu);

            modelBuilder.Entity<ThanhVien>()
                .HasMany(e => e.YeuThiches)
                .WithOptional(e => e.ThanhVien)
                .HasForeignKey(e => e.id_ThanhVien);

            modelBuilder.Entity<TheLoaiNhac>()
                .HasMany(e => e.BaiHats)
                .WithOptional(e => e.TheLoaiNhac)
                .HasForeignKey(e => e.id_TheLoaiNhac);
        }
    }
}
