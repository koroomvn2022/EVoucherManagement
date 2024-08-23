/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Dic_Domain_create]
(
    @App_Dic_Domain_Id nvarchar(50)
    ,@CreateUser nvarchar(50)
    ,@CreateDate datetime
    ,@UpdateUser nvarchar(50)
    ,@UpdateDate datetime
    ,@IsActive bit
    ,@App_Org_Id nvarchar(50)
    ,@DomainCode nvarchar(50)
    ,@ItemCode nvarchar(50)
    ,@ItemValue nvarchar(50)
    ,@DisplayOrder int
    ,@Description nvarchar(1000)
)
as
begin
    set nocount on

    declare @temp nvarchar(50) = lower(newid())

    insert into App_Dic_Domain
    (
        App_Dic_Domain_Id
        ,CreateUser
        ,CreateDate
        ,UpdateUser
        ,UpdateDate
        ,IsActive
        ,App_Org_Id
        ,DomainCode
        ,ItemCode
        ,ItemValue
        ,DisplayOrder
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
        ,@DomainCode
        ,@ItemCode
        ,@ItemValue
        ,@DisplayOrder
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

create procedure [dbo].[App_Dic_Domain_update]
(
    @App_Dic_Domain_Id nvarchar(50)
    ,@CreateUser nvarchar(50)
    ,@CreateDate datetime
    ,@UpdateUser nvarchar(50)
    ,@UpdateDate datetime
    ,@IsActive bit
    ,@App_Org_Id nvarchar(50)
    ,@DomainCode nvarchar(50)
    ,@ItemCode nvarchar(50)
    ,@ItemValue nvarchar(50)
    ,@DisplayOrder int
    ,@Description nvarchar(1000)
)
as
begin
    set nocount on

    update App_Dic_Domain set 
        CreateUser=@CreateUser
        ,CreateDate=@CreateDate
        ,UpdateUser=@UpdateUser
        ,UpdateDate=@UpdateDate
        ,IsActive=@IsActive
        ,App_Org_Id=@App_Org_Id
        ,DomainCode=@DomainCode
        ,ItemCode=@ItemCode
        ,ItemValue=@ItemValue
        ,DisplayOrder=@DisplayOrder
        ,Description=@Description
     where App_Dic_Domain_Id=@App_Dic_Domain_Id
end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Dic_Domain_delete]
(
    @App_Dic_Domain_Id nvarchar(50)
)
as
begin
    set nocount on

    delete from App_Dic_Domain where App_Dic_Domain_Id=@App_Dic_Domain_Id

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Dic_Domain_getbyid]
(
    @App_Dic_Domain_Id nvarchar(50)
)
as
begin
    set nocount on

    select * from App_Dic_Domain where App_Dic_Domain_Id=@App_Dic_Domain_Id

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Dic_Domain_getpaging]
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
    from App_Dic_Domain a 
    where 1=1 
    order by App_Dic_Domain_Id
        offset @pageSize * @pageIndex rows 
    fetch next @pageSize rows only
    

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Dic_Domain_getall]
as
begin
    set nocount on

    select a.* from App_Dic_Domain a 
    
end
GO


