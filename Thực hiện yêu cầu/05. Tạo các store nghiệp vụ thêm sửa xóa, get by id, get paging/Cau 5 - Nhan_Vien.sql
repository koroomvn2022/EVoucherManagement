--Nhan_Vien
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[Nhan_Vien_create]
(
    @Nhan_vien_id nvarchar(50)
    ,@App_User_Id nvarchar(50)
    ,@Ngay_sinh date
    ,@Cmt nvarchar(50)
)
as
begin
    set nocount on

    declare @temp nvarchar(50) = lower(newid())

    insert into Nhan_Vien
    (
        Nhan_vien_id
        ,App_User_Id
        ,Ngay_sinh
        ,Cmt
    )
    values (
        @temp
        ,@App_User_Id
        ,@Ngay_sinh
        ,@Cmt
    )
    select @temp
end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[Nhan_Vien_update]
(
    @Nhan_vien_id nvarchar(50)
    ,@App_User_Id nvarchar(50)
    ,@Ngay_sinh date
    ,@Cmt nvarchar(50)
)
as
begin
    set nocount on

    update Nhan_Vien set 
        App_User_Id=@App_User_Id
        ,Ngay_sinh=@Ngay_sinh
        ,Cmt=@Cmt
     where Nhan_vien_id=@Nhan_vien_id
end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[Nhan_Vien_delete]
(
    @Nhan_vien_id nvarchar(50)
)
as
begin
    set nocount on

    delete from Nhan_Vien where Nhan_vien_id=@Nhan_vien_id

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[Nhan_Vien_getbyid]
(
    @Nhan_vien_id nvarchar(50)
)
as
begin
    set nocount on

    select * from Nhan_Vien where Nhan_vien_id=@Nhan_vien_id

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[Nhan_Vien_getpaging]
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
    from Nhan_Vien a 
    where 1=1 
    order by Nhan_vien_id
        offset @pageSize * @pageIndex rows 
    fetch next @pageSize rows only
    

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[Nhan_Vien_getall]
as
begin
    set nocount on

    select a.* from Nhan_Vien a 
    
end
GO


