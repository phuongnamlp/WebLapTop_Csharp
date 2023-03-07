using LaptopWeb.Models;
using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace LaptopWeb.Models
{
    public partial class LaptopModel : DbContext
    {
        public LaptopModel()
            : base("name=LaptopModel")
        {
        }

        public virtual DbSet<CTDonHang> CTDonHangs { get; set; }
        public virtual DbSet<DonHang> DonHangs { get; set; }
        public virtual DbSet<HangSanXuat> HangSanXuats { get; set; }
        public virtual DbSet<NguoiDung> NguoiDungs { get; set; }
        public virtual DbSet<NhanXet> NhanXets { get; set; }
        public virtual DbSet<PhanQuyen> PhanQuyens { get; set; }
        public virtual DbSet<SanPham> SanPhams { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<ThanhToan> ThanhToans { get; set; }
        public virtual DbSet<TinhTrang> TinhTrangs { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<CTDonHang>()
                .Property(e => e.Dongia)
                .HasPrecision(18, 0);

            modelBuilder.Entity<CTDonHang>()
                .Property(e => e.Thanhtien)
                .HasPrecision(18, 0);

            modelBuilder.Entity<DonHang>()
                .Property(e => e.ShipTel)
                .IsFixedLength();

            modelBuilder.Entity<DonHang>()
                .Property(e => e.Tongthanhtien)
                .HasPrecision(18, 0);

            modelBuilder.Entity<DonHang>()
                .HasMany(e => e.CTDonHangs)
                .WithRequired(e => e.DonHang)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<HangSanXuat>()
                .Property(e => e.TenHang)
                .IsFixedLength();

            modelBuilder.Entity<NguoiDung>()
                .Property(e => e.Dienthoai)
                .IsFixedLength();

            modelBuilder.Entity<NguoiDung>()
                .Property(e => e.Matkhau)
                .IsUnicode(false);

            modelBuilder.Entity<SanPham>()
                .Property(e => e.Giatien)
                .HasPrecision(18, 0);

            modelBuilder.Entity<SanPham>()
                .HasMany(e => e.CTDonHangs)
                .WithRequired(e => e.SanPham)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ThanhToan>()
                .HasMany(e => e.DonHangs)
                .WithOptional(e => e.ThanhToan)
                .HasForeignKey(e => e.Tinhtrangthanhtoan);

            modelBuilder.Entity<TinhTrang>()
                .HasMany(e => e.DonHangs)
                .WithOptional(e => e.TinhTrang1)
                .HasForeignKey(e => e.Tinhtrang);
        }
    }
}
