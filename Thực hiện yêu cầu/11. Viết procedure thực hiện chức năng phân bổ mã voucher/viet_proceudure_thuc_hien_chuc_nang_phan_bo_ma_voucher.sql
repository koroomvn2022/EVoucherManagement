--Viết procedure thực hiện chức năng phân bổ mã voucher

alter procedure Phan_bo_ma_voucher(
	@Ns_voucher_id nvarchar(50)
)
as
begin
	
	declare Chi_Tiet_NS_Voucher_Cursor cursor for 
	select Chi_tiet_NS_voucher_id, App_User_Id from Chi_Tiet_NS_Voucher
	where Ns_voucher_id = @Ns_voucher_id

	open Chi_Tiet_NS_Voucher_Cursor

	declare @Chi_tiet_NS_voucher_id nvarchar(50)
	declare @App_User_Id nvarchar(50)

	fetch next from Chi_Tiet_NS_Voucher_Cursor into
		@Chi_tiet_NS_voucher_id
		,@App_User_Id

	while @@fetch_status =0 
	begin
		
		declare Tung_Chi_Tiet_NS_Voucher_Cursor cursor for
		select Tung_chi_tiet_NS_voucher_id,Ma_loai_voucher,So_luong from Tung_Chi_Tiet_NS_Voucher
		where Chi_tiet_NS_voucher_id = @Chi_tiet_NS_voucher_id

		open Tung_Chi_Tiet_NS_Voucher_Cursor
				
		declare @Tung_chi_tiet_NS_voucher_id nvarchar(50)
		declare @Ma_loai_voucher nvarchar(50)
		declare @So_luong int 

		fetch next from Tung_Chi_Tiet_NS_Voucher_Cursor into
			@Tung_chi_tiet_NS_voucher_id
			,@Ma_loai_voucher
			,@So_luong

		while @@fetch_status = 0
		begin
			
			declare @idx int = 0

			while @idx <@So_luong
			begin

				declare @Voucher_id nvarchar(50) = (select top 1Voucher_id 
													from Danh_Sach_Voucher 
													where App_User_Id is null and Ma_loai_voucher = @Ma_loai_voucher and Ten_trang_thai = N'Chưa sử dụng')
				update 
					Danh_Sach_Voucher
				set
					App_User_Id = @App_User_Id 
					,Tung_chi_tiet_NS_voucher_id = @Tung_chi_tiet_NS_voucher_id
				where
					Voucher_id = @Voucher_id

				set @idx +=1
			end

			update 
				Tung_Chi_Tiet_NS_Voucher
			set
				Ten_trang_thai = N'Đã phân bổ mã e-voucher'
			where 
				Tung_chi_tiet_NS_voucher_id = @Tung_chi_tiet_NS_voucher_id

			fetch next from Tung_Chi_Tiet_NS_Voucher_Cursor into
				@Tung_chi_tiet_NS_voucher_id
				,@Ma_loai_voucher
				,@So_luong

		end

		close Tung_Chi_Tiet_NS_Voucher_Cursor
		deallocate Tung_Chi_Tiet_NS_Voucher_Cursor

		update 
			Chi_Tiet_NS_Voucher
		set
			Ten_trang_thai =  N'Đã phân bổ mã e-voucher'
		where 
			Chi_tiet_NS_voucher_id = @Chi_tiet_NS_voucher_id

		fetch next from Chi_Tiet_NS_Voucher_Cursor into
			@Chi_tiet_NS_voucher_id
			,@App_User_Id

	end

	close Chi_Tiet_NS_Voucher_Cursor
	deallocate Chi_Tiet_NS_Voucher_Cursor

	update 
		NS_Voucher
	set
		Ten_trang_thai =  N'Đã phân bổ mã e-voucher'
	where 
		Ns_voucher_id = @Ns_voucher_id
end


exec Phan_bo_ma_voucher 'cda6a3c6-8c75-4010-a4cd-1a9619139822'




