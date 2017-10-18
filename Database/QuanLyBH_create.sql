-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2017-09-22 03:20:54.705

-- tables
-- Table: ChiTietHD
CREATE DATABASE QLBH
GO
USE QLBH
CREATE TABLE ChiTietHD (
    id int  NOT NULL,
    MaHD varchar(255)  NOT NULL,
    MaSP int  NOT NULL,
    SoLuong int  NOT NULL,
    CONSTRAINT ChiTietHD_pk PRIMARY KEY (id)
);

-- Table: HoaDon
CREATE TABLE HoaDon (
    MaHD varchar(255)  NOT NULL,
    MaKH int  NOT NULL,
    CONSTRAINT HoaDon_pk PRIMARY KEY (MaHD)
);

-- Table: KhachHang
CREATE TABLE KhachHang (
    maKH int  NOT NULL,
    TenKH varchar(255)  NOT NULL,
    email varchar(255)  NOT NULL,
    CONSTRAINT KhachHang_pk PRIMARY KEY (maKH)
);

-- Table: LoaiSP
CREATE TABLE LoaiSP (
    MaLoaiSP int  NOT NULL,
    TenLoai varchar(255)  NOT NULL,
    parent_category_id int  NULL,
    CONSTRAINT LoaiSP_pk PRIMARY KEY (MaLoaiSP)
);

-- Table: SanPham
CREATE TABLE SanPham (
    MaSP int  NOT NULL,
    MaLoaiSP int  NOT NULL,
    Loai char(10)  NOT NULL,
    Ten varchar(255)  NOT NULL,
    Gia money  NOT NULL,
    MoTa varchar(1000)  NOT NULL,
    CONSTRAINT SanPham_pk PRIMARY KEY (MaSP)
);

-- foreign keys
-- Reference: client_purchase (table: HoaDon)
ALTER TABLE HoaDon ADD CONSTRAINT client_purchase
    FOREIGN KEY (MaKH)
    REFERENCES KhachHang (maKH)  
;

-- Reference: product_category_product (table: SanPham)
ALTER TABLE SanPham ADD CONSTRAINT product_category_product
    FOREIGN KEY (MaLoaiSP)
    REFERENCES LoaiSP (MaLoaiSP)  
;

-- Reference: product_category_product_category (table: LoaiSP)
ALTER TABLE LoaiSP ADD CONSTRAINT product_category_product_category
    FOREIGN KEY (parent_category_id)
    REFERENCES LoaiSP (MaLoaiSP)  
;

-- Reference: product_purchase_item (table: ChiTietHD)
ALTER TABLE ChiTietHD ADD CONSTRAINT product_purchase_item
    FOREIGN KEY (MaSP)
    REFERENCES SanPham (MaSP)  
;

-- Reference: purchase_purchase_item (table: ChiTietHD)
ALTER TABLE ChiTietHD ADD CONSTRAINT purchase_purchase_item
    FOREIGN KEY (MaHD)
    REFERENCES HoaDon (MaHD)  
;

-- End of file.

