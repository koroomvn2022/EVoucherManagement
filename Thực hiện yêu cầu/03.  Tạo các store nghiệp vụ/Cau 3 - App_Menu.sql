/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Menu_create]
(
    @App_Menu_Id nvarchar(50)
    ,@CreateUser nvarchar(50)
    ,@CreateDate datetime
    ,@UpdateUser nvarchar(50)
    ,@UpdateDate datetime
    ,@IsActive bit
    ,@App_Org_Id nvarchar(50)
    ,@Name nvarchar(250)
    ,@TranslateKey nvarchar(250)
    ,@Url nvarchar(250)
    ,@Icon nvarchar(50)
    ,@DisplayOrder int
    ,@ParentId nvarchar(50)
)
as
begin
    set nocount on

    declare @temp nvarchar(50) = lower(newid())

    insert into App_Menu
    (
        App_Menu_Id
        ,CreateUser
        ,CreateDate
        ,UpdateUser
        ,UpdateDate
        ,IsActive
        ,App_Org_Id
        ,Name
        ,TranslateKey
        ,Url
        ,Icon
        ,DisplayOrder
        ,ParentId
    )
    values (
        @temp
        ,@CreateUser
        ,@CreateDate
        ,@UpdateUser
        ,@UpdateDate
        ,@IsActive
        ,@App_Org_Id
        ,@Name
        ,@TranslateKey
        ,@Url
        ,@Icon
        ,@DisplayOrder
        ,@ParentId
    )
    select @temp
end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Menu_update]
(
    @App_Menu_Id nvarchar(50)
    ,@CreateUser nvarchar(50)
    ,@CreateDate datetime
    ,@UpdateUser nvarchar(50)
    ,@UpdateDate datetime
    ,@IsActive bit
    ,@App_Org_Id nvarchar(50)
    ,@Name nvarchar(250)
    ,@TranslateKey nvarchar(250)
    ,@Url nvarchar(250)
    ,@Icon nvarchar(50)
    ,@DisplayOrder int
    ,@ParentId nvarchar(50)
)
as
begin
    set nocount on

    update App_Menu set 
        CreateUser=@CreateUser
        ,CreateDate=@CreateDate
        ,UpdateUser=@UpdateUser
        ,UpdateDate=@UpdateDate
        ,IsActive=@IsActive
        ,App_Org_Id=@App_Org_Id
        ,Name=@Name
        ,TranslateKey=@TranslateKey
        ,Url=@Url
        ,Icon=@Icon
        ,DisplayOrder=@DisplayOrder
        ,ParentId=@ParentId
     where App_Menu_Id=@App_Menu_Id
end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Menu_delete]
(
    @App_Menu_Id nvarchar(50)
)
as
begin
    set nocount on

    delete from App_Menu where App_Menu_Id=@App_Menu_Id

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Menu_getbyid]
(
    @App_Menu_Id nvarchar(50)
)
as
begin
    set nocount on

    select * from App_Menu where App_Menu_Id=@App_Menu_Id

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Menu_getpaging]
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
    from App_Menu a 
    where 1=1 
    order by App_Menu_Id
        offset @pageSize * @pageIndex rows 
    fetch next @pageSize rows only
    

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Menu_getall]
as
begin
    set nocount on

    select a.* from App_Menu a 
    
end
GO

