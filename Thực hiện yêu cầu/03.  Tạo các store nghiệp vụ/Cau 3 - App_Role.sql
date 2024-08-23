/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Role_create]
(
    @App_Role_Id nvarchar(50)
    ,@CreateUser nvarchar(50)
    ,@CreateDate datetime
    ,@UpdateUser nvarchar(50)
    ,@UpdateDate datetime
    ,@IsActive bit
    ,@App_Org_Id nvarchar(50)
    ,@Code nvarchar(50)
    ,@Name nvarchar(250)
    ,@Description nvarchar(1000)
)
as
begin
    set nocount on

    declare @temp nvarchar(50) = lower(newid())

    insert into App_Role
    (
        App_Role_Id
        ,CreateUser
        ,CreateDate
        ,UpdateUser
        ,UpdateDate
        ,IsActive
        ,App_Org_Id
        ,Code
        ,Name
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
        ,@Name
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

create procedure [dbo].[App_Role_update]
(
    @App_Role_Id nvarchar(50)
    ,@CreateUser nvarchar(50)
    ,@CreateDate datetime
    ,@UpdateUser nvarchar(50)
    ,@UpdateDate datetime
    ,@IsActive bit
    ,@App_Org_Id nvarchar(50)
    ,@Code nvarchar(50)
    ,@Name nvarchar(250)
    ,@Description nvarchar(1000)
)
as
begin
    set nocount on

    update App_Role set 
        CreateUser=@CreateUser
        ,CreateDate=@CreateDate
        ,UpdateUser=@UpdateUser
        ,UpdateDate=@UpdateDate
        ,IsActive=@IsActive
        ,App_Org_Id=@App_Org_Id
        ,Code=@Code
        ,Name=@Name
        ,Description=@Description
     where App_Role_Id=@App_Role_Id
end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Role_delete]
(
    @App_Role_Id nvarchar(50)
)
as
begin
    set nocount on

    delete from App_Role where App_Role_Id=@App_Role_Id

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Role_getbyid]
(
    @App_Role_Id nvarchar(50)
)
as
begin
    set nocount on

    select * from App_Role where App_Role_Id=@App_Role_Id

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Role_getpaging]
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
    from App_Role a 
    where 1=1 
    order by App_Role_Id
        offset @pageSize * @pageIndex rows 
    fetch next @pageSize rows only
    

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Role_getall]
as
begin
    set nocount on

    select a.* from App_Role a 
    
end
GO

