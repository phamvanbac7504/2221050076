-- câu lệnh tạo database
-- create database + tên database

create database if not exists netflix; 

-- nguoi dung
id int primary key auto_increment,
ten_dang_nhap varchar(50) ;
mat_khau varchar(30) ;
email varchar(50) ;
so_dien_thoai varchar(10) ;

-- nguoi_dung
create table if not exists nguoi_dung (
    id int auto_increment primary key,
    ten_dang_nhap varchar(50) not null,
    mat_khau varchar(30) not null,
    email varchar(50) not null,
    so_dien_thoai varchar(10) not null
);
SELECT `id`, `ten_dang_nhap`, `mat_khau`, `email`, `so_dien_thoai` FROM `nguoi_dung` WHERE 1

-- phim
id int; --key
ten_phim varchar(50) ;
thoi_luong int ;
nam int ;
gioi_thieu varchar(255) ;
dao_dien_id int;

-- phim
create table if not exists phim (
    id int auto_increment primary key,
    ten_phim varchar(100),
    thoi_luong int,
    nam int,
    gioi_thieu varchar(255),
    dao_dien_id int
);
SELECT `id`, `ten_phim`, `thoi_luong`, `nam`, `gioi_thieu`, `dao_dien_id` FROM `phim` WHERE 1

--phim_dien_vien
id int; --key
phim_id int;
dien_vien_id int;

-- phim_dien_vien
create table if not exists phim_dien_vien (
    id int auto_increment primary key,
    phim_id int not null,
    dien_vien_id int not null
);
SELECT `id`, `phim_id`, `dien_vien_id` FROM `phim_dien_vien` WHERE 1

--phim_the_loai
id int; --key
phim_id int;
the_loai_id int;

-- phim_the_loai
create table if not exists phim_the_loai (
    id int auto_increment primary key,
    phim_id int not null,
    the_loai_id int not null
);
SELECT `id`, `phim_id`, `the_loai_id` FROM `phim_the_loai` WHERE 1


--dao_dien
id int; --key
ten_dao_dien varchar(50) ;
dao_dien_id int;

-- dao_dien
create table if not exists dao_dien (
    id int auto_increment primary key,
    ten_dao_dien varchar(50),
);
SELECT `id`, `ten_the_loai` FROM `the_loai` WHERE 1

--the_loai
id int; --key
ten_the_loai varchar(50) ;

-- the_loai
create table if not exists the_loai (
    id int auto_increment primary key,
    ten_the_loai varchar(100)
);
SELECT `id`, `ten_the_loai` FROM `the_loai` WHERE 1

dien_vien
id int; --key
ten_dien_vien varchar(50) ;

-- dien_vien
create table if not exists dien_vien (
    id int auto_increment primary key,
    ten_dien_vien varchar(50)
);
SELECT `id`, `ten_dien_vien` FROM `dien_vien` WHERE 1

quoc_gia
id int; --key
ten_quoc_gia varchar(50) ;

-- quoc_gia
create table if not exists quoc_gia (
    id int auto_increment primary key,
    ten_quoc_gia varchar(50)
);
SELECT `id`, `ten_quoc_gia` FROM `quoc_gia` WHERE 1