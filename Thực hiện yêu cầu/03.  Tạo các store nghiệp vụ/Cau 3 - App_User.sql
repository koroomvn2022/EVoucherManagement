/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_User_create]
(
    @App_User_Id nvarchar(50)
    ,@CreateUser nvarchar(50)
    ,@CreateDate datetime
    ,@UpdateUser nvarchar(50)
    ,@UpdateDate datetime
    ,@IsActive bit
    ,@App_Org_Id nvarchar(50)
    ,@UserName nvarchar(50)
    ,@FullName nvarchar(250)
    ,@Email nvarchar(250)
    ,@EmailConfirmed bit
    ,@PhoneNumber nvarchar(50)
    ,@PhoneNumberConfirmed bit
    ,@AccessFailedCount int
    ,@IsAdmin bit
    ,@PasswordHash nvarchar(250)
    ,@LastLogin datetime
)
as
begin
    set nocount on

    declare @temp nvarchar(50) = lower(newid())

    insert into App_User
    (
        App_User_Id
        ,CreateUser
        ,CreateDate
        ,UpdateUser
        ,UpdateDate
        ,IsActive
        ,App_Org_Id
        ,UserName
        ,FullName
        ,Email
        ,EmailConfirmed
        ,PhoneNumber
        ,PhoneNumberConfirmed
        ,AccessFailedCount
        ,IsAdmin
        ,PasswordHash
        ,LastLogin
    )
    values (
        @temp
        ,@CreateUser
        ,@CreateDate
        ,@UpdateUser
        ,@UpdateDate
        ,@IsActive
        ,@App_Org_Id
        ,@UserName
        ,@FullName
        ,@Email
        ,@EmailConfirmed
        ,@PhoneNumber
        ,@PhoneNumberConfirmed
        ,@AccessFailedCount
        ,@IsAdmin
        ,@PasswordHash
        ,@LastLogin
    )
    select @temp
end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_User_update]
(
    @App_User_Id nvarchar(50)
    ,@CreateUser nvarchar(50)
    ,@CreateDate datetime
    ,@UpdateUser nvarchar(50)
    ,@UpdateDate datetime
    ,@IsActive bit
    ,@App_Org_Id nvarchar(50)
    ,@UserName nvarchar(50)
    ,@FullName nvarchar(250)
    ,@Email nvarchar(250)
    ,@EmailConfirmed bit
    ,@PhoneNumber nvarchar(50)
    ,@PhoneNumberConfirmed bit
    ,@AccessFailedCount int
    ,@IsAdmin bit
    ,@PasswordHash nvarchar(250)
    ,@LastLogin datetime
)
as
begin
    set nocount on

    update App_User set 
        CreateUser=@CreateUser
        ,CreateDate=@CreateDate
        ,UpdateUser=@UpdateUser
        ,UpdateDate=@UpdateDate
        ,IsActive=@IsActive
        ,App_Org_Id=@App_Org_Id
        ,UserName=@UserName
        ,FullName=@FullName
        ,Email=@Email
        ,EmailConfirmed=@EmailConfirmed
        ,PhoneNumber=@PhoneNumber
        ,PhoneNumberConfirmed=@PhoneNumberConfirmed
        ,AccessFailedCount=@AccessFailedCount
        ,IsAdmin=@IsAdmin
        ,PasswordHash=@PasswordHash
        ,LastLogin=@LastLogin
     where App_User_Id=@App_User_Id
end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_User_delete]
(
    @App_User_Id nvarchar(50)
)
as
begin
    set nocount on

    delete from App_User where App_User_Id=@App_User_Id

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_User_getbyid]
(
    @App_User_Id nvarchar(50)
)
as
begin
    set nocount on

    select * from App_User where App_User_Id=@App_User_Id

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_User_getpaging]
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
    from App_User a 
    where 1=1 
    order by App_User_Id
        offset @pageSize * @pageIndex rows 
    fetch next @pageSize rows only
    

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_User_getall]
as
begin
    set nocount on

    select a.* from App_User a 
    
end
GO
