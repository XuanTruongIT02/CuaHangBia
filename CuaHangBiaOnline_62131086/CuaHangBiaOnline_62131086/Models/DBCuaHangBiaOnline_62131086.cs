using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace CuaHangBiaOnline_62131086.Models
{
    public partial class DBCuaHangBiaOnline_62131086 : DbContext
    {
        public DBCuaHangBiaOnline_62131086()
            : base("name=CuaHangBiaOnline_62131086")
        {
        }

        public virtual DbSet<Chitietdonhang_62131086> Chitietdonhangs { get; set; }
        public virtual DbSet<Donhang_62131086> Donhangs { get; set; }
        public virtual DbSet<Hangsanxuat_62131086> Hangsanxuats { get; set; }
        public virtual DbSet<Loaibia_62131086> Loaibias { get; set; }
        public virtual DbSet<Nguoidung_62131086> Nguoidungs { get; set; }
        public virtual DbSet<PhanQuyen_62131086> PhanQuyens { get; set; }
        public virtual DbSet<Sanpham_62131086> Sanphams { get; set; }
        public virtual DbSet<sysdiagrams_62131086> sysdiagrams { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Chitietdonhang_62131086>()
                .Property(e => e.Dongia)
                .HasPrecision(18, 0);

            modelBuilder.Entity<Donhang_62131086>()
                .HasMany(e => e.Chitietdonhang)
                .WithRequired(e => e.Donhang)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Hangsanxuat_62131086>()
                .Property(e => e.Tenhang)
                .IsFixedLength();

            modelBuilder.Entity<Loaibia_62131086>()
                .Property(e => e.Tenloai)
                .IsFixedLength();

            modelBuilder.Entity<Nguoidung_62131086>()
                .Property(e => e.Dienthoai)
                .IsFixedLength();

            modelBuilder.Entity<Nguoidung_62131086>()
                .Property(e => e.Matkhau)
                .IsUnicode(false);

            modelBuilder.Entity<Sanpham_62131086>()
                .Property(e => e.Giatien)
                .HasPrecision(18, 0);

            modelBuilder.Entity<Sanpham_62131086>()
                .HasMany(e => e.Chitietdonhang)
                .WithRequired(e => e.Sanpham)
                .WillCascadeOnDelete(false);
        }
    }
}
