--2. Thiết kế, tạo các bảng chức năng chung

-- Tạo bảng App_User
create table App_User(

App_User_Id  nvarchar(50)  primary key,
CreateUser  nvarchar(50)  not null,
CreateDate  datetime  not null,
UpdateUser  nvarchar(50),
UpdateDate  datetime,
IsActive  bit,
App_Org_Id  nvarchar(50)  not null , 
UserName  nvarchar(50)  not null  unique,
FullName  nvarchar(250)  not null,
Email  nvarchar(250),
EmailConfirmed  bit,
PhoneNumber  nvarchar(50),
PhoneNumberConfirmed  bit,
AccessFailedCount  int,
IsAdmin  bit,
PasswordHash  nvarchar(250),
LastLogin  datetime

)

-- Tạo bảng App_Menu
create table App_Menu (

App_Menu_Id  nvarchar(50)  primary key,
CreateUser  nvarchar(50)  not null,
CreateDate  datetime  not null,
UpdateUser  nvarchar(50),
UpdateDate  datetime,
IsActive  bit,
App_Org_Id   nvarchar(50)  not null,
Name  nvarchar(250)  not null,
TranslateKey  nvarchar(250),
Url  nvarchar(250),
Icon  nvarchar(50),
DisplayOrder  int,
ParentId  nvarchar(50)

)

-- Tạo bảng App_Role
create table App_Role (

App_Role_Id  nvarchar(50)  primary key,
CreateUser  nvarchar(50)  not null,
CreateDate  datetime   not null,
UpdateUser  nvarchar(50),
UpdateDate  datetime,
IsActive  bit,
App_Org_Id  nvarchar(50)  not null  ,
Code  nvarchar(50)  not null,
Name  nvarchar(250)  not null,
Description  nvarchar(1000)

)

-- Tạo bảng App_Org
create table App_Org (

App_Org_Id  nvarchar(50)  primary key,
CreateUser  nvarchar(50)  not null,
CreateDate  datetime  not null,
UpdateUser  nvarchar(50),
UpdateDate  datetime,
IsActive  bit,
Code  nvarchar(50)  not null  unique,
Name  nvarchar(250),
NameEn  nvarchar(250),
Type  nvarchar(50) ,
Address  nvarchar(1000),
Description   nvarchar(1000),
ParentId  nvarchar(50),
DisplayOrder  int

)

-- Tạo bảng App_Setting
create table App_Setting (

App_Setting_Id  nvarchar(50)  primary key,
CreateUser  nvarchar(50)  not null,
CreateDate  datetime  not null,
UpdateUser  nvarchar(50),
UpdateDate  datetime,
IsActive  bit,
App_Org_Id  nvarchar(50)  not null ,
Code  nvarchar(50)  not null,
Value  nvarchar(50)  not null,
Description  nvarchar(1000)

)

-- Tạo bảng App_File
create table App_File (

App_File_Id  nvarchar(50)  primary key,
CreateUser  nvarchar(50)  not null,
CreateDate  datetime  not null,
UpdateUser  nvarchar(50),
UpdateDate  datetime,
IsActive  bit,
App_Org_Id  nvarchar(50)  not null ,
FilePath  nvarchar(550),
FileExt  nvarchar(50)  not null,
FileName  nvarchar(250)  not null,
FileSize  int  not null,
FileContent  varbinary(max),
IsContentOnly  bit,
IsTemp  bit

) 

-- Tạo bảng App_Dic_Domain
create table App_Dic_Domain (

App_Dic_Domain_Id  nvarchar(50)  primary key,
CreateUser  nvarchar(50)  not null,
CreateDate  datetime  not null,
UpdateUser  nvarchar(50),
UpdateDate  datetime,
IsActive  bit,
App_Org_Id  nvarchar(50)  not null ,
DomainCode  nvarchar(50)  not null,
ItemCode  nvarchar(50)  not null,
ItemValue  nvarchar(50)  not null,
DisplayOrder  int,
Description  nvarchar(1000),
)

-- Tạo bảng App_Sequence
create table App_Sequence (

App_Sequence_Id  nvarchar(50)  primary key,
CreateUser  nvarchar(50)  not null,
CreateDate  datetime  not null,
UpdateUser  nvarchar(50),
UpdateDate  datetime,
IsActive bit,
App_Org_Id  nvarchar(50)  not null ,
Code  nvarchar(50)  not null,
Type  nvarchar(50),
Prefix  nvarchar(50),
Length  int,
SeqValue  int,
Description  nvarchar(1000)

)

-- Tạo bảng App_Log
create table App_Log (

App_Log_Id  nvarchar(50)  primary key,
CreateUser  nvarchar(50)  not null,
CreateDate  datetime  not null,
App_Org_Id  nvarchar(50)  not null ,
TableName  nvarchar(50),
RowId  nvarchar(50),
Action  nvarchar(50),
OldValue  nvarchar(1000),
NewValue  nvarchar(1000)
)

-- Tạo bảng App_Role_Menu_ref
create table App_Role_Menu_Ref (
App_Role_Menu_Ref_Id  nvarchar(50)  primary key,
CreatedDate  nvarchar(50)  not null,
CreatedUser  datetime  not null,
App_Role_Id  nvarchar(250)  not null,
App_Menu_Id  nvarchar(250)  not null

)

-- Tạo bảng App_User_Org_Ref
create table App_User_Org_Ref (

App_User_Org_Ref_Id  nvarchar(50)  primary key,
CreatedDate  nvarchar(50)  not null,
CreatedUser  datetime  not null,
App_User_Id  nvarchar(250)  not null,
App_Org_Id  nvarchar(250)  not null

)

-- Tạo bảng App_User_Role_Ref
create table App_User_Role_Ref(

App_User_Role_Ref_Id  nvarchar(50)  primary key,
CreatedDate  nvarchar(50)  not null,
CreatedUser  datetime  not null,
App_User_Id  nvarchar(250)  not null,
App_Role_Id  nvarchar(250)  not null

)

-- Tạo Check cho check App_Org
create function ckh_App_Org_App_Dic_Domain(
	@org_type nvarchar(50)
)
returns varchar(5)
as
begin
	if exists(select 1 from App_Dic_Domain where DomainCode = 'App_Org.Type' and ItemCode = @org_type)
		return 'True'
	return 'False'
end

go

alter table App_Org
add constraint CHK_App_Org_type check((dbo.ckh_App_Org_App_Dic_Domain(type)) = 'True')





