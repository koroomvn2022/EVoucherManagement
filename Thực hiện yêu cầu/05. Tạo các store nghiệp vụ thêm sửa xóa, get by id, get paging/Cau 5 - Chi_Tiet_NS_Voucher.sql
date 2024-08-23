/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[Chi_Tiet_NS_Voucher_create]
(
    @Chi_tiet_NS_voucher_id nvarchar(50)
    ,@Thoi_gian_tao datetime
    ,@Nguoi_tao nvarchar(50)
    ,@Thoi_cap_nhat datetime
    ,@Nguoi_cap_nhat nvarchar(50)
    ,@Ns_voucher_id nvarchar(50)
    ,@App_User_Id nvarchar(50)
    ,@Ngan_sach int
    ,@Trang_thai int
    ,@Ten_trang_thai nvarchar(50)
    ,@Tong_voucher int
)
as
begin
    set nocount on

    declare @temp nvarchar(50) = lower(newid())

    insert into Chi_Tiet_NS_Voucher
    (
        Chi_tiet_NS_voucher_id
        ,Thoi_gian_tao
        ,Nguoi_tao
        ,Thoi_cap_nhat
        ,Nguoi_cap_nhat
        ,Ns_voucher_id
        ,App_User_Id
        ,Ngan_sach
        ,Trang_thai
        ,Ten_trang_thai
        ,Tong_voucher
    )
    values (
        @temp
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
    )
    select @temp
end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[Chi_Tiet_NS_Voucher_update]
(
    @Chi_tiet_NS_voucher_id nvarchar(50)
    ,@Thoi_gian_tao datetime
    ,@Nguoi_tao nvarchar(50)
    ,@Thoi_cap_nhat datetime
    ,@Nguoi_cap_nhat nvarchar(50)
    ,@Ns_voucher_id nvarchar(50)
    ,@App_User_Id nvarchar(50)
    ,@Ngan_sach int
    ,@Trang_thai int
    ,@Ten_trang_thai nvarchar(50)
    ,@Tong_voucher int
)
as
begin
    set nocount on

    update Chi_Tiet_NS_Voucher set 
        Thoi_gian_tao=@Thoi_gian_tao
        ,Nguoi_tao=@Nguoi_tao
        ,Thoi_cap_nhat=@Thoi_cap_nhat
        ,Nguoi_cap_nhat=@Nguoi_cap_nhat
        ,Ns_voucher_id=@Ns_voucher_id
        ,App_User_Id=@App_User_Id
        ,Ngan_sach=@Ngan_sach
        ,Trang_thai=@Trang_thai
        ,Ten_trang_thai=@Ten_trang_thai
        ,Tong_voucher=@Tong_voucher
     where Chi_tiet_NS_voucher_id=@Chi_tiet_NS_voucher_id
end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[Chi_Tiet_NS_Voucher_delete]
(
    @Chi_tiet_NS_voucher_id nvarchar(50)
)
as
begin
    set nocount on

    delete from Chi_Tiet_NS_Voucher where Chi_tiet_NS_voucher_id=@Chi_tiet_NS_voucher_id

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[Chi_Tiet_NS_Voucher_getbyid]
(
    @Chi_tiet_NS_voucher_id nvarchar(50)
)
as
begin
    set nocount on

    select * from Chi_Tiet_NS_Voucher where Chi_tiet_NS_voucher_id=@Chi_tiet_NS_voucher_id

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[Chi_Tiet_NS_Voucher_getpaging]
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
    from Chi_Tiet_NS_Voucher a 
    where 1=1 
    order by Chi_tiet_NS_voucher_id
        offset @pageSize * @pageIndex rows 
    fetch next @pageSize rows only
    

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[Chi_Tiet_NS_Voucher_getall]
as
begin
    set nocount on

    select a.* from Chi_Tiet_NS_Voucher a 
    
end
GO


