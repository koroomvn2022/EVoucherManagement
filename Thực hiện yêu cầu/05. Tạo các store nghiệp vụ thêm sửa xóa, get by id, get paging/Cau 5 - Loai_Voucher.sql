/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[Loai_Voucher_create]
(
    @Loai_voucher_id nvarchar(50)
    ,@Thoi_gian_tao datetime
    ,@Nguoi_tao nvarchar(50)
    ,@Thoi_cap_nhat datetime
    ,@Nguoi_cap_nhat nvarchar(50)
    ,@Cong_ty nvarchar(50)
    ,@Ma_loai_voucher nvarchar(50)
    ,@Ten_voucher nvarchar(50)
    ,@Menh_gia int
    ,@Thu_tu int
    ,@Tinh_trang bit
)
as
begin
    set nocount on

    declare @temp nvarchar(50) = lower(newid())

    insert into Loai_Voucher
    (
        Loai_voucher_id
        ,Thoi_gian_tao
        ,Nguoi_tao
        ,Thoi_cap_nhat
        ,Nguoi_cap_nhat
        ,Cong_ty
        ,Ma_loai_voucher
        ,Ten_voucher
        ,Menh_gia
        ,Thu_tu
        ,Tinh_trang
    )
    values (
        @temp
        ,@Thoi_gian_tao
        ,@Nguoi_tao
        ,@Thoi_cap_nhat
        ,@Nguoi_cap_nhat
        ,@Cong_ty
        ,@Ma_loai_voucher
        ,@Ten_voucher
        ,@Menh_gia
        ,@Thu_tu
        ,@Tinh_trang
    )
    select @temp
end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[Loai_Voucher_update]
(
    @Loai_voucher_id nvarchar(50)
    ,@Thoi_gian_tao datetime
    ,@Nguoi_tao nvarchar(50)
    ,@Thoi_cap_nhat datetime
    ,@Nguoi_cap_nhat nvarchar(50)
    ,@Cong_ty nvarchar(50)
    ,@Ma_loai_voucher nvarchar(50)
    ,@Ten_voucher nvarchar(50)
    ,@Menh_gia int
    ,@Thu_tu int
    ,@Tinh_trang bit
)
as
begin
    set nocount on

    update Loai_Voucher set 
        Thoi_gian_tao=@Thoi_gian_tao
        ,Nguoi_tao=@Nguoi_tao
        ,Thoi_cap_nhat=@Thoi_cap_nhat
        ,Nguoi_cap_nhat=@Nguoi_cap_nhat
        ,Cong_ty=@Cong_ty
        ,Ma_loai_voucher=@Ma_loai_voucher
        ,Ten_voucher=@Ten_voucher
        ,Menh_gia=@Menh_gia
        ,Thu_tu=@Thu_tu
        ,Tinh_trang=@Tinh_trang
     where Loai_voucher_id=@Loai_voucher_id
end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[Loai_Voucher_delete]
(
    @Loai_voucher_id nvarchar(50)
)
as
begin
    set nocount on

    delete from Loai_Voucher where Loai_voucher_id=@Loai_voucher_id

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[Loai_Voucher_getbyid]
(
    @Loai_voucher_id nvarchar(50)
)
as
begin
    set nocount on

    select * from Loai_Voucher where Loai_voucher_id=@Loai_voucher_id

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[Loai_Voucher_getpaging]
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
    from Loai_Voucher a 
    where 1=1 
    order by Loai_voucher_id
        offset @pageSize * @pageIndex rows 
    fetch next @pageSize rows only
    

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[Loai_Voucher_getall]
as
begin
    set nocount on

    select a.* from Loai_Voucher a 
    
end
GO

Completion time: 2022-12-04T13:30:44.7366597+07:00
