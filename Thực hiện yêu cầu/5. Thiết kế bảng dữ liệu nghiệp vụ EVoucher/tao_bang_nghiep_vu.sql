--5. Thiết kế bảng dữ liệu nghiệp vụ EVoucher

-- Tạo bảng Nhan_Vien
create table Nhan_Vien(
	Nhan_vien_id nvarchar(50) primary key,
	App_User_Id  nvarchar(50),
	Ngay_sinh date,
	Cmt nvarchar(50)
	foreign key (App_User_Id) references App_User(App_User_Id )
)


-- Tạo bảng Danh_Muc_Loai_Voucher
create table Loai_Voucher(
	Loai_voucher_id nvarchar(50) primary key,
	Thoi_gian_tao datetime not null,
	Nguoi_tao nvarchar(50) not null,
	Thoi_cap_nhat datetime,
	Nguoi_cap_nhat nvarchar(50),
	Cong_ty nvarchar(50) not null,
	Ma_loai_voucher nvarchar(50) not null unique,
	Ten_voucher nvarchar(50) not null,
	Menh_gia int not null,
	Thu_tu int ,
	Tinh_trang bit
)

--Tạo bảng Danh_Sach_Voucher
create table Danh_Sach_Voucher(
	Voucher_id nvarchar(50) primary key,
	Tung_chi_tiet_NS_voucher_id nvarchar(50),
	Thoi_gian_tao datetime not null,
	Nguoi_tao nvarchar(50) not null,
	Thoi_cap_nhat datetime,
	Nguoi_cap_nhat nvarchar(50),
	Loai_voucher_id nvarchar(50),
	Ma_voucher nvarchar(50),
	App_User_Id nvarchar(50),
	Han_tu_ngay datetime,
	Han_den_ngay datetime,
	Ten_trang_thai nvarchar(50),
	Ngay_su_dung datetime,
	Dia_diem_su_dung varchar(255),
	Ghi_chu nvarchar(255),
	foreign key (Tung_chi_tiet_NS_voucher_id) references Tung_Chi_Tiet_NS_Voucher(Tung_chi_tiet_NS_voucher_id),
	foreign key (Loai_voucher_id) references Loai_Voucher(Loai_voucher_id)
)
create function chk_DanhSachVoucher_ChiTietNSVoucher_App_User_Id
(@App_User_Id nvarchar(50))
returns nvarchar(5)
as 
begin
	if exists (select 1 from Chi_Tiet_NS_Voucher where App_User_Id = @App_User_Id)
	begin
		return 'True'
	end
	return 'False'
end

alter table Danh_Sach_Voucher
add constraint chk_App_UserId check((dbo.chk_DanhSachVoucher_ChiTietNSVoucher_App_User_Id(App_User_Id) ='True'))

--Quản lý ngân sách voucher

	-- Tạo bảng Ngan_Sach_Voucher
	Create table NS_Voucher(
		Ns_voucher_id nvarchar(50) primary key,
		Thoi_gian_tao datetime not null,
		Nguoi_tao nvarchar(50) not null,
		Thoi_cap_nhat datetime,
		Nguoi_cap_nhat nvarchar(50),
		App_Org_Id nvarchar(50),
		Ten_trang_thai nvarchar(50),
		Cong_ty nvarchar(50) ,
		Tong_nhan_vien int ,
		Tong_ngan_sach int ,
		Tong_voucher int,
		foreign key (App_Org_Id) references App_Org(App_Org_Id)
	)

	-- Tạo bảng Chi_Tiet_Ngan_Sach_Voucher
	create table Chi_Tiet_NS_Voucher(
		Chi_tiet_NS_voucher_id nvarchar(50) primary key,
		Thoi_gian_tao datetime not null,
		Nguoi_tao nvarchar(50) not null,
		Thoi_cap_nhat datetime,
		Nguoi_cap_nhat nvarchar(50),
		Ns_voucher_id nvarchar(50),
		App_User_Id nvarchar(50),
		Ngan_sach int not null,
		Ten_trang_thai nvarchar(50),
		Tong_voucher int,
		foreign key (App_User_Id) references App_USer(App_User_Id), 
		foreign key (Ns_voucher_id) references NS_Voucher(Ns_voucher_id)
	)

	-- Tạo bảng Tung_Chi_Tiet_Ngan_Sach_Voucher
	create table Tung_Chi_Tiet_NS_Voucher(
		Tung_chi_tiet_NS_voucher_id nvarchar(50) primary key,
		Thoi_gian_tao datetime not null,
		Nguoi_tao nvarchar(50) not null,
		Thoi_cap_nhat datetime,
		Nguoi_cap_nhat nvarchar(50),
		Chi_tiet_NS_voucher_id  nvarchar(50),
		Ten_trang_thai nvarchar(50),
		Loai_voucher_id nvarchar(50) ,
		So_luong int,
		Menh_gia int,
		Thanh_tien int,
		foreign key (Chi_tiet_NS_voucher_id) references Chi_Tiet_NS_Voucher(Chi_tiet_NS_voucher_id),
		foreign key (Loai_voucher_id) references Loai_Voucher(Loai_voucher_id)
	)

