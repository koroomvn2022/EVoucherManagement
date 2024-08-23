/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Sequence_create]
(
    @App_Sequence_Id nvarchar(50)
    ,@CreateUser nvarchar(50)
    ,@CreateDate datetime
    ,@UpdateUser nvarchar(50)
    ,@UpdateDate datetime
    ,@IsActive bit
    ,@App_Org_Id nvarchar(50)
    ,@Code nvarchar(50)
    ,@Type nvarchar(50)
    ,@Prefix nvarchar(50)
    ,@Length int
    ,@SeqValue int
    ,@Description nvarchar(1000)
)
as
begin
    set nocount on

    declare @temp nvarchar(50) = lower(newid())

    insert into App_Sequence
    (
        App_Sequence_Id
        ,CreateUser
        ,CreateDate
        ,UpdateUser
        ,UpdateDate
        ,IsActive
        ,App_Org_Id
        ,Code
        ,Type
        ,Prefix
        ,Length
        ,SeqValue
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
        ,@Type
        ,@Prefix
        ,@Length
        ,@SeqValue
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

create procedure [dbo].[App_Sequence_update]
(
    @App_Sequence_Id nvarchar(50)
    ,@CreateUser nvarchar(50)
    ,@CreateDate datetime
    ,@UpdateUser nvarchar(50)
    ,@UpdateDate datetime
    ,@IsActive bit
    ,@App_Org_Id nvarchar(50)
    ,@Code nvarchar(50)
    ,@Type nvarchar(50)
    ,@Prefix nvarchar(50)
    ,@Length int
    ,@SeqValue int
    ,@Description nvarchar(1000)
)
as
begin
    set nocount on

    update App_Sequence set 
        CreateUser=@CreateUser
        ,CreateDate=@CreateDate
        ,UpdateUser=@UpdateUser
        ,UpdateDate=@UpdateDate
        ,IsActive=@IsActive
        ,App_Org_Id=@App_Org_Id
        ,Code=@Code
        ,Type=@Type
        ,Prefix=@Prefix
        ,Length=@Length
        ,SeqValue=@SeqValue
        ,Description=@Description
     where App_Sequence_Id=@App_Sequence_Id
end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Sequence_delete]
(
    @App_Sequence_Id nvarchar(50)
)
as
begin
    set nocount on

    delete from App_Sequence where App_Sequence_Id=@App_Sequence_Id

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Sequence_getbyid]
(
    @App_Sequence_Id nvarchar(50)
)
as
begin
    set nocount on

    select * from App_Sequence where App_Sequence_Id=@App_Sequence_Id

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Sequence_getpaging]
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
    from App_Sequence a 
    where 1=1 
    order by App_Sequence_Id
        offset @pageSize * @pageIndex rows 
    fetch next @pageSize rows only
    

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_Sequence_getall]
as
begin
    set nocount on

    select a.* from App_Sequence a 
    
end
GO


