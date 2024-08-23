/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_User_Role_Ref_create]
(
    @App_User_Role_Ref_Id nvarchar(50)
    ,@CreatedDate nvarchar(50)
    ,@CreatedUser datetime
    ,@App_User_Id nvarchar(250)
    ,@App_Role_Id nvarchar(250)
)
as
begin
    set nocount on

    declare @temp nvarchar(50) = lower(newid())

    insert into App_User_Role_Ref
    (
        App_User_Role_Ref_Id
        ,CreatedDate
        ,CreatedUser
        ,App_User_Id
        ,App_Role_Id
    )
    values (
        @temp
        ,@CreatedDate
        ,@CreatedUser
        ,@App_User_Id
        ,@App_Role_Id
    )
    select @temp
end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_User_Role_Ref_update]
(
    @App_User_Role_Ref_Id nvarchar(50)
    ,@CreatedDate nvarchar(50)
    ,@CreatedUser datetime
    ,@App_User_Id nvarchar(250)
    ,@App_Role_Id nvarchar(250)
)
as
begin
    set nocount on

    update App_User_Role_Ref set 
        CreatedDate=@CreatedDate
        ,CreatedUser=@CreatedUser
        ,App_User_Id=@App_User_Id
        ,App_Role_Id=@App_Role_Id
     where App_User_Role_Ref_Id=@App_User_Role_Ref_Id
end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_User_Role_Ref_delete]
(
    @App_User_Role_Ref_Id nvarchar(50)
)
as
begin
    set nocount on

    delete from App_User_Role_Ref where App_User_Role_Ref_Id=@App_User_Role_Ref_Id

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_User_Role_Ref_getbyid]
(
    @App_User_Role_Ref_Id nvarchar(50)
)
as
begin
    set nocount on

    select * from App_User_Role_Ref where App_User_Role_Ref_Id=@App_User_Role_Ref_Id

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_User_Role_Ref_getpaging]
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
    from App_User_Role_Ref a 
    where 1=1 
    order by App_User_Role_Ref_Id
        offset @pageSize * @pageIndex rows 
    fetch next @pageSize rows only
    

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_User_Role_Ref_getall]
as
begin
    set nocount on

    select a.* from App_User_Role_Ref a 
    
end
GO

