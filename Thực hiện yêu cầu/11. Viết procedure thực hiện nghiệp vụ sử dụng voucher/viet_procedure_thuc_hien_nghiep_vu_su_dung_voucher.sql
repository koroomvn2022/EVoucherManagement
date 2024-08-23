create procedure Su_dung_voucher(
	@Ma_voucher nvarchar(50)
)
as
begin
	if not exists ( select * from Danh_Sach_Voucher where Ten_trang_thai = N'Chưa sử dụng' and Ma_voucher = @Ma_voucher)
	begin
		print N'Voucher dang o trang thai: ' +  (select Ten_trang_thai from Danh_Sach_Voucher where  Ma_voucher = @Ma_voucher)
	end
	else
	begin
		update 
			Danh_Sach_Voucher
		set
			Ten_trang_thai = N'Đã sử dụng'
	end
end