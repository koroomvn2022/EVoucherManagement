create procedure Bao_cao_so_luong_va_gia_tri
as
begin
	select
		a.Ma_loai_voucher
		, sum(iif(Ten_trang_thai = N'Đã sử dụng',1,0)) as [Số lượng voucher đã sử dụng]
		, sum(iif(Ten_trang_thai = N'Đã sử dụng',Menh_gia,0)) as [Tổng số tiền của voucher đã sử dụng] 
		, sum(iif(Ten_trang_thai = N'Chưa sử dụng',1,0)) as [Số lượng voucher chưa sử dụng]
		, sum(iif(Ten_trang_thai = N'Chưa sử dụng',Menh_gia,0)) as [Tổng số tiền của voucher chưa sử dụng] 
		, sum(iif(Ten_trang_thai = N'Đã hết hạn',1,0)) as [Số lượng voucher đã hết hạn]
		, sum(iif(Ten_trang_thai = N'Đã hết hạn',Menh_gia,0)) as [Tổng số tiền của voucher đã hết hạn] 
		, sum(Menh_gia) as [Tổng số tiền]
	from 
		Danh_Sach_Voucher as a
	join Loai_Voucher as b on a.Ma_loai_voucher = b.Ma_loai_voucher
	group by
		a.Ma_loai_voucher
end

exec Bao_cao_so_luong_va_gia_tri