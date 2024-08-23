/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[Danh_Sach_Voucher_create]
(
    @Voucher_id nvarchar(50)
    ,@Tung_chi_tiet_NS_voucher_id nvarchar(50)
    ,@Thoi_gian_tao datetime
    ,@Nguoi_tao nvarchar(50)
    ,@Thoi_cap_nhat datetime
    ,@Nguoi_cap_nhat nvarchar(50)
    ,@Ma_voucher nvarchar(50)
    ,@App_User_Id nvarchar(50)
    ,@Han_tu_ngay datetime
    ,@Han_den_ngay datetime
    ,@Trang_thai int
    ,@Ten_trang_thai nvarchar(50)
    ,@Ngay_su_dung datetime
    ,@Dia_diem_su_dung varchar(255)
    ,@Ghi_chu nvarchar(255)
)
as
begin
    set nocount on

    declare @temp nvarchar(50) = lower(newid())

    insert into Danh_Sach_Voucher
    (
        Voucher_id
        ,Tung_chi_tiet_NS_voucher_id
        ,Thoi_gian_tao
        ,Nguoi_tao
        ,Thoi_cap_nhat
        ,Nguoi_cap_nhat
        ,Ma_voucher
        ,App_User_Id
        ,Han_tu_ngay
        ,Han_den_ngay
        ,Trang_thai
        ,Ten_trang_thai
        ,Ngay_su_dung
        ,Dia_diem_su_dung
        ,Ghi_chu
    )
    values (
        @temp
        ,@Tung_chi_tiet_NS_voucher_id
        ,@Thoi_gian_tao
        ,@Nguoi_tao
        ,@Thoi_cap_nhat
        ,@Nguoi_cap_nhat
        ,@Ma_voucher
        ,@App_User_Id
        ,@Han_tu_ngay
        ,@Han_den_ngay
        ,@Trang_thai
        ,@Ten_trang_thai
        ,@Ngay_su_dung
        ,@Dia_diem_su_dung
        ,@Ghi_chu
    )
    select @temp
end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[Danh_Sach_Voucher_update]
(
    @Voucher_id nvarchar(50)
    ,@Tung_chi_tiet_NS_voucher_id nvarchar(50)
    ,@Thoi_gian_tao datetime
    ,@Nguoi_tao nvarchar(50)
    ,@Thoi_cap_nhat datetime
    ,@Nguoi_cap_nhat nvarchar(50)
    ,@Ma_voucher nvarchar(50)
    ,@App_User_Id nvarchar(50)
    ,@Han_tu_ngay datetime
    ,@Han_den_ngay datetime
    ,@Trang_thai int
    ,@Ten_trang_thai nvarchar(50)
    ,@Ngay_su_dung datetime
    ,@Dia_diem_su_dung varchar(255)
    ,@Ghi_chu nvarchar(255)
)
as
begin
    set nocount on

    update Danh_Sach_Voucher set 
        Tung_chi_tiet_NS_voucher_id=@Tung_chi_tiet_NS_voucher_id
        ,Thoi_gian_tao=@Thoi_gian_tao
        ,Nguoi_tao=@Nguoi_tao
        ,Thoi_cap_nhat=@Thoi_cap_nhat
        ,Nguoi_cap_nhat=@Nguoi_cap_nhat
        ,Ma_voucher=@Ma_voucher
        ,App_User_Id=@App_User_Id
        ,Han_tu_ngay=@Han_tu_ngay
        ,Han_den_ngay=@Han_den_ngay
        ,Trang_thai=@Trang_thai
        ,Ten_trang_thai=@Ten_trang_thai
        ,Ngay_su_dung=@Ngay_su_dung
        ,Dia_diem_su_dung=@Dia_diem_su_dung
        ,Ghi_chu=@Ghi_chu
     where Voucher_id=@Voucher_id
end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[Danh_Sach_Voucher_delete]
(
    @Voucher_id nvarchar(50)
)
as
begin
    set nocount on

    delete from Danh_Sach_Voucher where Voucher_id=@Voucher_id

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[Danh_Sach_Voucher_getbyid]
(
    @Voucher_id nvarchar(50)
)
as
begin
    set nocount on

    select * from Danh_Sach_Voucher where Voucher_id=@Voucher_id

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[Danh_Sach_Voucher_getpaging]
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
    from Danh_Sach_Voucher a 
    where 1=1 
    order by Voucher_id
        offset @pageSize * @pageIndex rows 
    fetch next @pageSize rows only
    

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[Danh_Sach_Voucher_getall]
as
begin
    set nocount on

    select a.* from Danh_Sach_Voucher a 
    
end
GO

