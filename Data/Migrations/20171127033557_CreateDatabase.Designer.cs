﻿// <auto-generated />
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage;
using Microsoft.EntityFrameworkCore.Storage.Internal;
using QuanLyBanSach.Data;
using System;

namespace QuanLyBanSach.Data.Migrations
{
    [DbContext(typeof(ApplicationDbContext))]
    [Migration("20171127033557_CreateDatabase")]
    partial class CreateDatabase
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "2.0.0-rtm-26452")
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRole", b =>
                {
                    b.Property<string>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken();

                    b.Property<string>("Name")
                        .HasMaxLength(256);

                    b.Property<string>("NormalizedName")
                        .HasMaxLength(256);

                    b.HasKey("Id");

                    b.HasIndex("NormalizedName")
                        .IsUnique()
                        .HasName("RoleNameIndex")
                        .HasFilter("[NormalizedName] IS NOT NULL");

                    b.ToTable("AspNetRoles");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<string>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("ClaimType");

                    b.Property<string>("ClaimValue");

                    b.Property<string>("RoleId")
                        .IsRequired();

                    b.HasKey("Id");

                    b.HasIndex("RoleId");

                    b.ToTable("AspNetRoleClaims");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<string>", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("ClaimType");

                    b.Property<string>("ClaimValue");

                    b.Property<string>("UserId")
                        .IsRequired();

                    b.HasKey("Id");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserClaims");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<string>", b =>
                {
                    b.Property<string>("LoginProvider");

                    b.Property<string>("ProviderKey");

                    b.Property<string>("ProviderDisplayName");

                    b.Property<string>("UserId")
                        .IsRequired();

                    b.HasKey("LoginProvider", "ProviderKey");

                    b.HasIndex("UserId");

                    b.ToTable("AspNetUserLogins");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserRole<string>", b =>
                {
                    b.Property<string>("UserId");

                    b.Property<string>("RoleId");

                    b.HasKey("UserId", "RoleId");

                    b.HasIndex("RoleId");

                    b.ToTable("AspNetUserRoles");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<string>", b =>
                {
                    b.Property<string>("UserId");

                    b.Property<string>("LoginProvider");

                    b.Property<string>("Name");

                    b.Property<string>("Value");

                    b.HasKey("UserId", "LoginProvider", "Name");

                    b.ToTable("AspNetUserTokens");
                });

            modelBuilder.Entity("QuanLyBanSach.Models.ApplicationUser", b =>
                {
                    b.Property<string>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("AccessFailedCount");

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken();

                    b.Property<string>("DiaChi");

                    b.Property<string>("Email")
                        .HasMaxLength(256);

                    b.Property<bool>("EmailConfirmed");

                    b.Property<bool>("GioiTinh");

                    b.Property<string>("HoTen");

                    b.Property<bool>("LockoutEnabled");

                    b.Property<DateTimeOffset?>("LockoutEnd");

                    b.Property<DateTime>("NgaySinh");

                    b.Property<string>("NormalizedEmail")
                        .HasMaxLength(256);

                    b.Property<string>("NormalizedUserName")
                        .HasMaxLength(256);

                    b.Property<string>("PasswordHash");

                    b.Property<string>("PhoneNumber");

                    b.Property<bool>("PhoneNumberConfirmed");

                    b.Property<string>("SecurityStamp");

                    b.Property<string>("SoDienThoai");

                    b.Property<bool>("TwoFactorEnabled");

                    b.Property<string>("UserName")
                        .HasMaxLength(256);

                    b.HasKey("Id");

                    b.HasIndex("NormalizedEmail")
                        .HasName("EmailIndex");

                    b.HasIndex("NormalizedUserName")
                        .IsUnique()
                        .HasName("UserNameIndex")
                        .HasFilter("[NormalizedUserName] IS NOT NULL");

                    b.ToTable("AspNetUsers");
                });

            modelBuilder.Entity("QuanLyBanSach.Models.ChiTietHoaDon", b =>
                {
                    b.Property<int>("HoaDonId");

                    b.Property<int>("SachId");

                    b.Property<DateTime>("NgayThem");

                    b.HasKey("HoaDonId", "SachId");

                    b.HasIndex("SachId");

                    b.ToTable("ChiTietHoaDon");
                });

            modelBuilder.Entity("QuanLyBanSach.Models.ChuDe", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("TenChuDe");

                    b.HasKey("Id");

                    b.ToTable("ChuDe");
                });

            modelBuilder.Entity("QuanLyBanSach.Models.DanhMuc", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("TenDanhMuc");

                    b.HasKey("Id");

                    b.ToTable("DanhMuc");
                });

            modelBuilder.Entity("QuanLyBanSach.Models.HoaDon", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<DateTime>("NgayLapHoaDon");

                    b.Property<string>("UserId");

                    b.HasKey("Id");

                    b.HasIndex("UserId");

                    b.ToTable("HoaDon");
                });

            modelBuilder.Entity("QuanLyBanSach.Models.NhanXet", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("NoiDung");

                    b.Property<int?>("Sachid");

                    b.Property<string>("TieuDe")
                        .HasMaxLength(50);

                    b.Property<string>("UserId");

                    b.HasKey("Id");

                    b.HasIndex("Sachid");

                    b.HasIndex("UserId");

                    b.ToTable("NhanXet");
                });

            modelBuilder.Entity("QuanLyBanSach.Models.NhaXuatBan", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("TenNhaXuatBan");

                    b.HasKey("Id");

                    b.ToTable("NhaXuatBan");
                });

            modelBuilder.Entity("QuanLyBanSach.Models.Sach", b =>
                {
                    b.Property<int>("id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("ChieuDai");

                    b.Property<int>("ChieuRong");

                    b.Property<int?>("ChuDeId");

                    b.Property<int?>("DanhMucId");

                    b.Property<string>("DinhDang")
                        .HasMaxLength(100);

                    b.Property<int>("DonGia");

                    b.Property<string>("HinhAnh")
                        .HasMaxLength(200);

                    b.Property<int?>("NhaXuatBanId");

                    b.Property<int>("PhanTramGiamGia");

                    b.Property<int>("SoLuong");

                    b.Property<int>("SoTrang");

                    b.Property<int?>("TacGiaId");

                    b.Property<string>("TenSach")
                        .HasMaxLength(50);

                    b.Property<string>("TomTat");

                    b.HasKey("id");

                    b.HasIndex("ChuDeId");

                    b.HasIndex("DanhMucId");

                    b.HasIndex("NhaXuatBanId");

                    b.HasIndex("TacGiaId");

                    b.ToTable("Sach");
                });

            modelBuilder.Entity("QuanLyBanSach.Models.TacGia", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("TenTacGia");

                    b.HasKey("Id");

                    b.ToTable("TacGia");
                });

            modelBuilder.Entity("QuanLyBanSach.Models.Wishlist", b =>
                {
                    b.Property<int>("SachID");

                    b.Property<string>("UserID");

                    b.HasKey("SachID", "UserID");

                    b.HasIndex("UserID");

                    b.ToTable("Wishlist");
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityRoleClaim<string>", b =>
                {
                    b.HasOne("Microsoft.AspNetCore.Identity.IdentityRole")
                        .WithMany()
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserClaim<string>", b =>
                {
                    b.HasOne("QuanLyBanSach.Models.ApplicationUser")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserLogin<string>", b =>
                {
                    b.HasOne("QuanLyBanSach.Models.ApplicationUser")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserRole<string>", b =>
                {
                    b.HasOne("Microsoft.AspNetCore.Identity.IdentityRole")
                        .WithMany()
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("QuanLyBanSach.Models.ApplicationUser")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("Microsoft.AspNetCore.Identity.IdentityUserToken<string>", b =>
                {
                    b.HasOne("QuanLyBanSach.Models.ApplicationUser")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("QuanLyBanSach.Models.ChiTietHoaDon", b =>
                {
                    b.HasOne("QuanLyBanSach.Models.HoaDon", "HoaDon")
                        .WithMany("ChiTietHoaDons")
                        .HasForeignKey("HoaDonId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("QuanLyBanSach.Models.Sach", "Sach")
                        .WithMany("ChiTietHoaDons")
                        .HasForeignKey("SachId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("QuanLyBanSach.Models.HoaDon", b =>
                {
                    b.HasOne("QuanLyBanSach.Models.ApplicationUser", "User")
                        .WithMany("HoaDons")
                        .HasForeignKey("UserId");
                });

            modelBuilder.Entity("QuanLyBanSach.Models.NhanXet", b =>
                {
                    b.HasOne("QuanLyBanSach.Models.Sach", "Sach")
                        .WithMany("DanhGias")
                        .HasForeignKey("Sachid");

                    b.HasOne("QuanLyBanSach.Models.ApplicationUser", "User")
                        .WithMany("NhanXets")
                        .HasForeignKey("UserId");
                });

            modelBuilder.Entity("QuanLyBanSach.Models.Sach", b =>
                {
                    b.HasOne("QuanLyBanSach.Models.ChuDe")
                        .WithMany("Saches")
                        .HasForeignKey("ChuDeId");

                    b.HasOne("QuanLyBanSach.Models.DanhMuc", "DanhMuc")
                        .WithMany("Saches")
                        .HasForeignKey("DanhMucId");

                    b.HasOne("QuanLyBanSach.Models.NhaXuatBan", "NhaXuatBan")
                        .WithMany("Saches")
                        .HasForeignKey("NhaXuatBanId");

                    b.HasOne("QuanLyBanSach.Models.TacGia", "TacGia")
                        .WithMany("Saches")
                        .HasForeignKey("TacGiaId");
                });

            modelBuilder.Entity("QuanLyBanSach.Models.Wishlist", b =>
                {
                    b.HasOne("QuanLyBanSach.Models.Sach", "Sach")
                        .WithMany("Wishlist")
                        .HasForeignKey("SachID")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("QuanLyBanSach.Models.ApplicationUser", "User")
                        .WithMany("Wishlist")
                        .HasForeignKey("UserID")
                        .OnDelete(DeleteBehavior.Cascade);
                });
#pragma warning restore 612, 618
        }
    }
}
