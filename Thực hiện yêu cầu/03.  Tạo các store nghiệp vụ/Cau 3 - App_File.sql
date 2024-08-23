/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_File_create]
(
    @App_File_Id nvarchar(50)
    ,@CreateUser nvarchar(50)
    ,@CreateDate datetime
    ,@UpdateUser nvarchar(50)
    ,@UpdateDate datetime
    ,@IsActive bit
    ,@App_Org_Id nvarchar(50)
    ,@FilePath nvarchar(550)
    ,@FileExt nvarchar(50)
    ,@FileName nvarchar(250)
    ,@FileSize int
    ,@FileContent varbinary
    ,@IsContentOnly bit
    ,@IsTemp bit
)
as
begin
    set nocount on

    declare @temp nvarchar(50) = lower(newid())

    insert into App_File
    (
        App_File_Id
        ,CreateUser
        ,CreateDate
        ,UpdateUser
        ,UpdateDate
        ,IsActive
        ,App_Org_Id
        ,FilePath
        ,FileExt
        ,FileName
        ,FileSize
        ,FileContent
        ,IsContentOnly
        ,IsTemp
    )
    values (
        @temp
        ,@CreateUser
        ,@CreateDate
        ,@UpdateUser
        ,@UpdateDate
        ,@IsActive
        ,@App_Org_Id
        ,@FilePath
        ,@FileExt
        ,@FileName
        ,@FileSize
        ,@FileContent
        ,@IsContentOnly
        ,@IsTemp
    )
    select @temp
end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_File_update]
(
    @App_File_Id nvarchar(50)
    ,@CreateUser nvarchar(50)
    ,@CreateDate datetime
    ,@UpdateUser nvarchar(50)
    ,@UpdateDate datetime
    ,@IsActive bit
    ,@App_Org_Id nvarchar(50)
    ,@FilePath nvarchar(550)
    ,@FileExt nvarchar(50)
    ,@FileName nvarchar(250)
    ,@FileSize int
    ,@FileContent varbinary
    ,@IsContentOnly bit
    ,@IsTemp bit
)
as
begin
    set nocount on

    update App_File set 
        CreateUser=@CreateUser
        ,CreateDate=@CreateDate
        ,UpdateUser=@UpdateUser
        ,UpdateDate=@UpdateDate
        ,IsActive=@IsActive
        ,App_Org_Id=@App_Org_Id
        ,FilePath=@FilePath
        ,FileExt=@FileExt
        ,FileName=@FileName
        ,FileSize=@FileSize
        ,FileContent=@FileContent
        ,IsContentOnly=@IsContentOnly
        ,IsTemp=@IsTemp
     where App_File_Id=@App_File_Id
end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_File_delete]
(
    @App_File_Id nvarchar(50)
)
as
begin
    set nocount on

    delete from App_File where App_File_Id=@App_File_Id

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_File_getbyid]
(
    @App_File_Id nvarchar(50)
)
as
begin
    set nocount on

    select * from App_File where App_File_Id=@App_File_Id

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_File_getpaging]
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
    from App_File a 
    where 1=1 
    order by App_File_Id
        offset @pageSize * @pageIndex rows 
    fetch next @pageSize rows only
    

end
GO
/*** auto generate code ***/ 
SET ANSI_NULLS ON 

GO

SET QUOTED_IDENTIFIER ON

GO

create procedure [dbo].[App_File_getall]
as
begin
    set nocount on

    select a.* from App_File a 
    
end
GO
