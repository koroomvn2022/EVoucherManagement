/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Role_Menu_Ref_create]
(
    @App_Role_Menu_Ref_Id nvarchar(50)
    ,@CreatedDate nvarchar(50)
    ,@CreatedUser datetime
    ,@App_Role_Id nvarchar(250)
    ,@App_Menu_Id nvarchar(250)
)
as
begin
    set nocount on

    declare @temp nvarchar(50) = lower(newid())

    insert into App_Role_Menu_Ref
    (
        App_Role_Menu_Ref_Id
        ,CreatedDate
        ,CreatedUser
        ,App_Role_Id
        ,App_Menu_Id
    )
    values (
        @temp
        ,@CreatedDate
        ,@CreatedUser
        ,@App_Role_Id
        ,@App_Menu_Id
    )
    select @temp
end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Role_Menu_Ref_update]
(
    @App_Role_Menu_Ref_Id nvarchar(50)
    ,@CreatedDate nvarchar(50)
    ,@CreatedUser datetime
    ,@App_Role_Id nvarchar(250)
    ,@App_Menu_Id nvarchar(250)
)
as
begin
    set nocount on

    update App_Role_Menu_Ref set 
        CreatedDate=@CreatedDate
        ,CreatedUser=@CreatedUser
        ,App_Role_Id=@App_Role_Id
        ,App_Menu_Id=@App_Menu_Id
     where App_Role_Menu_Ref_Id=@App_Role_Menu_Ref_Id
end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Role_Menu_Ref_delete]
(
    @App_Role_Menu_Ref_Id nvarchar(50)
)
as
begin
    set nocount on

    delete from App_Role_Menu_Ref where App_Role_Menu_Ref_Id=@App_Role_Menu_Ref_Id

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Role_Menu_Ref_getbyid]
(
    @App_Role_Menu_Ref_Id nvarchar(50)
)
as
begin
    set nocount on

    select * from App_Role_Menu_Ref where App_Role_Menu_Ref_Id=@App_Role_Menu_Ref_Id

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Role_Menu_Ref_getpaging]
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
    from App_Role_Menu_Ref a 
    where 1=1 
    order by App_Role_Menu_Ref_Id
        offset @pageSize * @pageIndex rows 
    fetch next @pageSize rows only
    

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Role_Menu_Ref_getall]
as
begin
    set nocount on

    select a.* from App_Role_Menu_Ref a 
    
end
GO
