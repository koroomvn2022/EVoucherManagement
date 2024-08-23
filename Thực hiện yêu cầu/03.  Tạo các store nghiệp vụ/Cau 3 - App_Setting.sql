/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Setting_create]
(
    @App_Setting_Id nvarchar(50)
    ,@CreateUser nvarchar(50)
    ,@CreateDate datetime
    ,@UpdateUser nvarchar(50)
    ,@UpdateDate datetime
    ,@IsActive bit
    ,@App_Org_Id nvarchar(50)
    ,@Code nvarchar(50)
    ,@Value nvarchar(50)
    ,@Description nvarchar(1000)
)
as
begin
    set nocount on

    declare @temp nvarchar(50) = lower(newid())

    insert into App_Setting
    (
        App_Setting_Id
        ,CreateUser
        ,CreateDate
        ,UpdateUser
        ,UpdateDate
        ,IsActive
        ,App_Org_Id
        ,Code
        ,Value
        ,Description
    )
    values (
        @temp
        ,@CreateUser
        ,@CreateDate
        ,@UpdateUser
        ,@UpdateDate
        ,@IsActive
        ,@App_Org_Id
        ,@Code
        ,@Value
        ,@Description
    )
    select @temp
end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Setting_update]
(
    @App_Setting_Id nvarchar(50)
    ,@CreateUser nvarchar(50)
    ,@CreateDate datetime
    ,@UpdateUser nvarchar(50)
    ,@UpdateDate datetime
    ,@IsActive bit
    ,@App_Org_Id nvarchar(50)
    ,@Code nvarchar(50)
    ,@Value nvarchar(50)
    ,@Description nvarchar(1000)
)
as
begin
    set nocount on

    update App_Setting set 
        CreateUser=@CreateUser
        ,CreateDate=@CreateDate
        ,UpdateUser=@UpdateUser
        ,UpdateDate=@UpdateDate
        ,IsActive=@IsActive
        ,App_Org_Id=@App_Org_Id
        ,Code=@Code
        ,Value=@Value
        ,Description=@Description
     where App_Setting_Id=@App_Setting_Id
end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Setting_delete]
(
    @App_Setting_Id nvarchar(50)
)
as
begin
    set nocount on

    delete from App_Setting where App_Setting_Id=@App_Setting_Id

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Setting_getbyid]
(
    @App_Setting_Id nvarchar(50)
)
as
begin
    set nocount on

    select * from App_Setting where App_Setting_Id=@App_Setting_Id

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Setting_getpaging]
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
    from App_Setting a 
    where 1=1 
    order by App_Setting_Id
        offset @pageSize * @pageIndex rows 
    fetch next @pageSize rows only
    

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Setting_getall]
as
begin
    set nocount on

    select a.* from App_Setting a 
    
end
GO

