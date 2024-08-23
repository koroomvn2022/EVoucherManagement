/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Org_create]
(
    @App_Org_Id nvarchar(50)
    ,@CreateUser nvarchar(50)
    ,@CreateDate datetime
    ,@UpdateUser nvarchar(50)
    ,@UpdateDate datetime
    ,@IsActive bit
    ,@Code nvarchar(50)
    ,@Name nvarchar(250)
    ,@NameEn nvarchar(250)
    ,@Type nvarchar(50)
    ,@Address nvarchar(1000)
    ,@Description nvarchar(1000)
    ,@ParentId nvarchar(50)
    ,@DisplayOrder int
)
as
begin
    set nocount on

    declare @temp nvarchar(50) = lower(newid())

    insert into App_Org
    (
        App_Org_Id
        ,CreateUser
        ,CreateDate
        ,UpdateUser
        ,UpdateDate
        ,IsActive
        ,Code
        ,Name
        ,NameEn
        ,Type
        ,Address
        ,Description
        ,ParentId
        ,DisplayOrder
    )
    values (
        @temp
        ,@CreateUser
        ,@CreateDate
        ,@UpdateUser
        ,@UpdateDate
        ,@IsActive
        ,@Code
        ,@Name
        ,@NameEn
        ,@Type
        ,@Address
        ,@Description
        ,@ParentId
        ,@DisplayOrder
    )
    select @temp
end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Org_update]
(
    @App_Org_Id nvarchar(50)
    ,@CreateUser nvarchar(50)
    ,@CreateDate datetime
    ,@UpdateUser nvarchar(50)
    ,@UpdateDate datetime
    ,@IsActive bit
    ,@Code nvarchar(50)
    ,@Name nvarchar(250)
    ,@NameEn nvarchar(250)
    ,@Type nvarchar(50)
    ,@Address nvarchar(1000)
    ,@Description nvarchar(1000)
    ,@ParentId nvarchar(50)
    ,@DisplayOrder int
)
as
begin
    set nocount on

    update App_Org set 
        CreateUser=@CreateUser
        ,CreateDate=@CreateDate
        ,UpdateUser=@UpdateUser
        ,UpdateDate=@UpdateDate
        ,IsActive=@IsActive
        ,Code=@Code
        ,Name=@Name
        ,NameEn=@NameEn
        ,Type=@Type
        ,Address=@Address
        ,Description=@Description
        ,ParentId=@ParentId
        ,DisplayOrder=@DisplayOrder
     where App_Org_Id=@App_Org_Id
end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Org_delete]
(
    @App_Org_Id nvarchar(50)
)
as
begin
    set nocount on

    delete from App_Org where App_Org_Id=@App_Org_Id

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Org_getbyid]
(
    @App_Org_Id nvarchar(50)
)
as
begin
    set nocount on

    select * from App_Org where App_Org_Id=@App_Org_Id

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Org_getpaging]
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
    from App_Org a 
    where 1=1 
    order by App_Org_Id
        offset @pageSize * @pageIndex rows 
    fetch next @pageSize rows only
    

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Org_getall]
as
begin
    set nocount on

    select a.* from App_Org a 
    
end
GO

