/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[Tung_Chi_Tiet_NS_Voucher_create]
(
    @Tung_chi_tiet_NS_voucher_id nvarchar(50)
    ,@Thoi_gian_tao datetime
    ,@Nguoi_tao nvarchar(50)
    ,@Thoi_cap_nhat datetime
    ,@Nguoi_cap_nhat nvarchar(50)
    ,@Chi_tiet_NS_voucher_id nvarchar(50)
    ,@Trang_thai int
    ,@Ten_trang_thai nvarchar(50)
    ,@Loai_voucher_id nvarchar(50)
    ,@So_luong int
    ,@Menh_gia int
    ,@Thanh_tien int
)
as
begin
    set nocount on

    declare @temp nvarchar(50) = lower(newid())

    insert into Tung_Chi_Tiet_NS_Voucher
    (
        Tung_chi_tiet_NS_voucher_id
        ,Thoi_gian_tao
        ,Nguoi_tao
        ,Thoi_cap_nhat
        ,Nguoi_cap_nhat
        ,Chi_tiet_NS_voucher_id
        ,Trang_thai
        ,Ten_trang_thai
        ,Loai_voucher_id
        ,So_luong
        ,Menh_gia
        ,Thanh_tien
    )
    values (
        @temp
        ,@Thoi_gian_tao
        ,@Nguoi_tao
        ,@Thoi_cap_nhat
        ,@Nguoi_cap_nhat
        ,@Chi_tiet_NS_voucher_id
        ,@Trang_thai
        ,@Ten_trang_thai
        ,@Loai_voucher_id
        ,@So_luong
        ,@Menh_gia
        ,@Thanh_tien
    )
    select @temp
end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[Tung_Chi_Tiet_NS_Voucher_update]
(
    @Tung_chi_tiet_NS_voucher_id nvarchar(50)
    ,@Thoi_gian_tao datetime
    ,@Nguoi_tao nvarchar(50)
    ,@Thoi_cap_nhat datetime
    ,@Nguoi_cap_nhat nvarchar(50)
    ,@Chi_tiet_NS_voucher_id nvarchar(50)
    ,@Trang_thai int
    ,@Ten_trang_thai nvarchar(50)
    ,@Loai_voucher_id nvarchar(50)
    ,@So_luong int
    ,@Menh_gia int
    ,@Thanh_tien int
)
as
begin
    set nocount on

    update Tung_Chi_Tiet_NS_Voucher set 
        Thoi_gian_tao=@Thoi_gian_tao
        ,Nguoi_tao=@Nguoi_tao
        ,Thoi_cap_nhat=@Thoi_cap_nhat
        ,Nguoi_cap_nhat=@Nguoi_cap_nhat
        ,Chi_tiet_NS_voucher_id=@Chi_tiet_NS_voucher_id
        ,Trang_thai=@Trang_thai
        ,Ten_trang_thai=@Ten_trang_thai
        ,Loai_voucher_id=@Loai_voucher_id
        ,So_luong=@So_luong
        ,Menh_gia=@Menh_gia
        ,Thanh_tien=@Thanh_tien
     where Tung_chi_tiet_NS_voucher_id=@Tung_chi_tiet_NS_voucher_id
end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[Tung_Chi_Tiet_NS_Voucher_delete]
(
    @Tung_chi_tiet_NS_voucher_id nvarchar(50)
)
as
begin
    set nocount on

    delete from Tung_Chi_Tiet_NS_Voucher where Tung_chi_tiet_NS_voucher_id=@Tung_chi_tiet_NS_voucher_id

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[Tung_Chi_Tiet_NS_Voucher_getbyid]
(
    @Tung_chi_tiet_NS_voucher_id nvarchar(50)
)
as
begin
    set nocount on

    select * from Tung_Chi_Tiet_NS_Voucher where Tung_chi_tiet_NS_voucher_id=@Tung_chi_tiet_NS_voucher_id

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[Tung_Chi_Tiet_NS_Voucher_getpaging]
(
    @pageIndex int
    ,@pageSize int
)
as
begin
    set nocount on

    select
        a.* 
        ,count(*) over() as TotalCount
    from Tung_Chi_Tiet_NS_Voucher a 
    where 1=1 
    order by Tung_chi_tiet_NS_voucher_id
        offset @pageSize * @pageIndex rows 
    fetch next @pageSize rows only
    

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[Tung_Chi_Tiet_NS_Voucher_getall]
as
begin
    set nocount on

    select a.* from Tung_Chi_Tiet_NS_Voucher a 
    
end
GO
