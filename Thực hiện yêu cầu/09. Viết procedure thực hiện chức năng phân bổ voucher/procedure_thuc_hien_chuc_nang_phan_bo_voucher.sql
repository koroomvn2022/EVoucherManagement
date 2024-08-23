create function Xu_ly_thu_tu_uu_tien(
	@thu_tu_uu_tien nvarchar(50)
)
returns @bang_thu_tu_uu_tien table (
	stt int identity(1,1)
	,loai_voucher nvarchar(50)
)
as 
begin

	set @thu_tu_uu_tien = trim(@thu_tu_uu_tien)
	declare @temp nvarchar(50) = @thu_tu_uu_tien
	set @thu_tu_uu_tien = replace(@thu_tu_uu_tien,'  ',' ')
	
	while @temp != @thu_tu_uu_tien
	begin
		set @temp = @thu_tu_uu_tien  
		set @thu_tu_uu_tien = replace(@thu_tu_uu_tien,'  ',' ')	
	end

	set @thu_tu_uu_tien += ' ' 

	declare @idx int = 1

	while charindex(' ',@thu_tu_uu_tien,@idx) != 0
	begin
		insert into @bang_thu_tu_uu_tien
		values (substring(@thu_tu_uu_tien, @idx,charindex(' ',@thu_tu_uu_tien,@idx)-@idx))
		set @idx = charindex(' ',@thu_tu_uu_tien,@idx)+1


	end
	return
end


alter procedure phan_bo_voucher
(
	@Ns_voucher_id nvarchar(50),
	@Danh_sach_thu_tu nvarchar(50)
)
as 
begin
	
--Kiểm tra điều có đúng trạng thái không?

	if not exists ( select 1 from NS_Voucher where Ns_voucher_id = @Ns_voucher_id and Trang_thai =3)
	begin
		declare @temp nvarchar(50) =  (select Ten_trang_thai from NS_Voucher where Ns_voucher_id = @Ns_voucher_id )
		print 'Ngan sach dang o trang thai: ' + @temp
	end
	else
	begin

--Tạo ra bảng về thứ tự ưu tiên các voucher

		declare @Thu_tu_uu_tien table(
			Thu_tu int 
			,Ma_loai_voucher nvarchar(50)
		)

		insert into @Thu_tu_uu_tien
		select * from dbo.Xu_ly_thu_tu_uu_tien(@Danh_sach_thu_tu)

	--Chức năng phân phẩn voucher
	


		--Tạo con trỏ cho bảng Chi_Tiet_NS_Voucher

		declare Chi_Tiet_NS_Voucher_Cursor cursor for select * from Chi_Tiet_NS_Voucher where Ns_voucher_id = @Ns_voucher_id

		open Chi_Tiet_NS_Voucher_Cursor

			--Khởi tạo biến cho con trỏ

		declare @Chi_tiet_NS_voucher_id nvarchar(50)
		declare @Thoi_gian_tao datetime
		declare @Nguoi_tao nvarchar(50)
		declare @Thoi_cap_nhat datetime
		declare @Nguoi_cap_nhat nvarchar(50)
		declare @Ns_voucher_id_ct nvarchar(50)
		declare @App_User_Id nvarchar(50)
		declare @Ngan_sach int
		declare @Trang_thai int
		declare @Ten_trang_thai nvarchar(50)
		declare @Tong_voucher int

		fetch next from Chi_Tiet_NS_Voucher_Cursor into 

			@Chi_tiet_NS_voucher_id
			,@Thoi_gian_tao
			,@Nguoi_tao
			,@Thoi_cap_nhat
			,@Nguoi_cap_nhat
			,@Ns_voucher_id
			,@App_User_Id
			,@Ngan_sach
			,@Trang_thai
			,@Ten_trang_thai
			,@Tong_voucher

		while @@FETCH_STATUS = 0
		begin

			declare @Thu_tu int = 1

			while @Ngan_sach !=0
			begin

				declare @Ma_loai_voucher nvarchar(50) =  (select Ma_loai_voucher from @Thu_tu_uu_tien where Thu_tu = @Thu_tu)
				declare @Menh_gia int = (select Menh_gia from Loai_Voucher where Ma_loai_voucher = @Ma_loai_voucher)


				if @Menh_gia <= @Ngan_sach
				begin
					insert into Tung_Chi_Tiet_NS_Voucher values (

						lower(newid())
						,getdate()
						,'An danh'
						,null
						,null
						,@Chi_tiet_NS_voucher_id
						,4
						,N'Đã phân bổ'
						,@Ma_loai_voucher
						,@Ngan_sach / @Menh_gia
						,@Menh_gia
						,(@Ngan_sach / @Menh_gia)*@Menh_gia

					)

					set @Ngan_sach %= @Menh_gia
				end

				set @Thu_tu +=1

			end

			update Chi_Tiet_NS_Voucher 
			set Trang_thai = 4, Ten_trang_thai = N'Đã phân bổ'
			where Chi_tiet_NS_voucher_id = @Chi_tiet_NS_voucher_id

			fetch next from Chi_Tiet_NS_Voucher_Cursor into 

				@Chi_tiet_NS_voucher_id
				,@Thoi_gian_tao
				,@Nguoi_tao
				,@Thoi_cap_nhat
				,@Nguoi_cap_nhat
				,@Ns_voucher_id
				,@App_User_Id
				,@Ngan_sach
				,@Trang_thai
				,@Ten_trang_thai
				,@Tong_voucher

		end

		close Chi_Tiet_NS_Voucher_Cursor
		deallocate Chi_Tiet_NS_Voucher_Cursor

		update NS_Voucher 
		set Trang_thai = 4, Ten_trang_thai = N'Đã phân bổ'
		where Ns_voucher_id = @Ns_voucher_id

	end
end

exec phan_bo_voucher 'cda6a3c6-8c75-4010-a4cd-1a9619139822', 'CC4 VC200 VC100'
