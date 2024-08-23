-- Tạo Procedure để import ngân sách

create procedure import_NS_Voucher(
	@sdt nvarchar(50)
	,@hoten nvarchar(250)
	,@ns int
	,@Ns_voucher_id nvarchar(50)
)
as
begin
	insert into Chi_Tiet_NS_Voucher
	values
	(
	lower(newid())
	,GETDATE()
	,'an danh'
	,null
	,null
	,@Ns_voucher_id
	,(select App_User_Id from App_User where PhoneNumber = @sdt)
	,@ns
	,3
	,'Đang phân bổ'
	,0
	)
	update NS_Voucher
	set Tong_nhan_vien +=1, Tong_ngan_sach += @ns
	where Ns_voucher_id = @Ns_voucher_id

end

-- Import Ngân sách tháng 5/2022
insert into NS_Voucher 
values
(
	lower(newid())
	,getdate()
	,'an danh'
	,null
	,null
	,null
	,3
	,'Đang phân bổ'
	,null
	,0
	,0
	,0
)


select top 1 Ns_voucher_id from NS_Voucher order by Thoi_gian_tao desc

exec import_NS_Voucher '0980000300', N'Trần Tuấn Nghị', 2000000, '1f8f8be2-0924-4062-b666-0312e787be35'
exec import_NS_Voucher '0980000301', N'Đinh Quang Sơn', 1200000, '1f8f8be2-0924-4062-b666-0312e787be35'
exec import_NS_Voucher '0980000302', N'Bùi Văn Dũng', 500000, '1f8f8be2-0924-4062-b666-0312e787be35'
exec import_NS_Voucher '0980000303', N'Phạm Thanh Tùng', 1000000, '1f8f8be2-0924-4062-b666-0312e787be35'
exec import_NS_Voucher '0980000304', N'Trần Đức Nam', 2000000, '1f8f8be2-0924-4062-b666-0312e787be35'
exec import_NS_Voucher '0980000305', N'Phạm Tuấn Linh', 4000000, '1f8f8be2-0924-4062-b666-0312e787be35'
exec import_NS_Voucher '0980000306', N'Phan Thị Thu Hiền', 3000000, '1f8f8be2-0924-4062-b666-0312e787be35'
exec import_NS_Voucher '0980000307', N'Trần Thanh Huyền 2', 2000000, '1f8f8be2-0924-4062-b666-0312e787be35'
exec import_NS_Voucher '0980000308', N'Nguyễn Huy Pha', 1000000, '1f8f8be2-0924-4062-b666-0312e787be35'
exec import_NS_Voucher '0980000309', N'Mai Văn Dương', 500000, '1f8f8be2-0924-4062-b666-0312e787be35'

select * from NS_Voucher
select * from Chi_Tiet_NS_Voucher


-- Import Ngân sách tháng 5/2022
insert into NS_Voucher 
values
(
	lower(newid())
	,getdate()
	,'an danh'
	,null
	,null
	,null
	,null
	,null
	,null
	,0
	,0
	,0
)

select top 1 Ns_voucher_id from NS_Voucher order by Thoi_gian_tao desc

exec import_NS_Voucher '0980000318', N'Nguyễn Thành Trung', 5000000, 'cda6a3c6-8c75-4010-a4cd-1a9619139822'
exec import_NS_Voucher '0980000319', N'Phạm Văn Thoại', 2000000, 'cda6a3c6-8c75-4010-a4cd-1a9619139822'
exec import_NS_Voucher '0980000320', N'Nguyễn Thị Minh Huyền', 3000000, 'cda6a3c6-8c75-4010-a4cd-1a9619139822'
exec import_NS_Voucher '0980000321', N'Đậu Đức Anh', 2000000, 'cda6a3c6-8c75-4010-a4cd-1a9619139822'
exec import_NS_Voucher '0980000322', N'Trương Ngọc Quang', 1000000, 'cda6a3c6-8c75-4010-a4cd-1a9619139822'
exec import_NS_Voucher '0980000323', N'Vũ Anh Tuấn', 500000, 'cda6a3c6-8c75-4010-a4cd-1a9619139822'
exec import_NS_Voucher '0980000324', N'Nguyễn Thị Thanh Nga', 6000000, 'cda6a3c6-8c75-4010-a4cd-1a9619139822'
exec import_NS_Voucher '0980000325', N'Nguyễn Thị Thu Hương', 5000000, 'cda6a3c6-8c75-4010-a4cd-1a9619139822'
exec import_NS_Voucher '0980000326', N'Ngô Việt Cường', 4000000, 'cda6a3c6-8c75-4010-a4cd-1a9619139822'
exec import_NS_Voucher '0980000327', N'Lê Thị Kiều Trang', 3000000, 'cda6a3c6-8c75-4010-a4cd-1a9619139822'
exec import_NS_Voucher '0980000328', N'Nguyễn Thế Ngọc', 2000000, 'cda6a3c6-8c75-4010-a4cd-1a9619139822'
exec import_NS_Voucher '0980000329', N'Đỗ Thị Thái Thi', 1000000, 'cda6a3c6-8c75-4010-a4cd-1a9619139822'
exec import_NS_Voucher '0980000330', N'Vũ Tuấn Anh', 500000, 'cda6a3c6-8c75-4010-a4cd-1a9619139822'
exec import_NS_Voucher '0980000331', N'Nguyễn Thế Phong', 5000000, 'cda6a3c6-8c75-4010-a4cd-1a9619139822'
exec import_NS_Voucher '0980000332', N'Đinh Anh Nam', 5000000, 'cda6a3c6-8c75-4010-a4cd-1a9619139822'
exec import_NS_Voucher '0980000333', N'Bùi Thị Kim Anh', 2000000, 'cda6a3c6-8c75-4010-a4cd-1a9619139822'
exec import_NS_Voucher '0980000334', N'Trần Quang Định', 3000000, 'cda6a3c6-8c75-4010-a4cd-1a9619139822'
exec import_NS_Voucher '0980000335', N'Nguyễn Thị Hương Thảo', 2000000, 'cda6a3c6-8c75-4010-a4cd-1a9619139822'
exec import_NS_Voucher '0980000336', N'Trần Mạnh Cường', 1000000, 'cda6a3c6-8c75-4010-a4cd-1a9619139822'
exec import_NS_Voucher '0980000337', N'Nguyễn Trung Thành', 500000, 'cda6a3c6-8c75-4010-a4cd-1a9619139822'
exec import_NS_Voucher '0980000338', N'Nguyễn Khắc Minh', 6000000, 'cda6a3c6-8c75-4010-a4cd-1a9619139822'
exec import_NS_Voucher '0980000339', N'Đặng Phú Quý', 5000000, 'cda6a3c6-8c75-4010-a4cd-1a9619139822'
exec import_NS_Voucher '0980000340', N'Nguyễn Anh Lộc', 4000000, 'cda6a3c6-8c75-4010-a4cd-1a9619139822'
exec import_NS_Voucher '0980000341', N'Nguyễn Duy Hà ', 3000000, 'cda6a3c6-8c75-4010-a4cd-1a9619139822'
exec import_NS_Voucher '0980000342', N'Nguyễn Hồng Quân', 2000000, 'cda6a3c6-8c75-4010-a4cd-1a9619139822'
exec import_NS_Voucher '0980000343', N'Nguyễn Thị Cẩm Vân', 1000000, 'cda6a3c6-8c75-4010-a4cd-1a9619139822'
exec import_NS_Voucher '0980000344', N'Bùi Vũ Công', 500000, 'cda6a3c6-8c75-4010-a4cd-1a9619139822'
exec import_NS_Voucher '0980000345', N'Vũ Đình Học 2', 6000000, 'cda6a3c6-8c75-4010-a4cd-1a9619139822'
exec import_NS_Voucher '0980000346', N'Lương Ngọc Bảo', 5000000, 'cda6a3c6-8c75-4010-a4cd-1a9619139822'
exec import_NS_Voucher '0980000347', N'Nguyễn Tuấn Tuyên', 4000000, 'cda6a3c6-8c75-4010-a4cd-1a9619139822'


select * from NS_Voucher
select * from Chi_Tiet_NS_Voucher

