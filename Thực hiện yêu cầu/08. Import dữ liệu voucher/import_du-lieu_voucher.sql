alter procedure import_voucher(
	@loai_voucher_id nvarchar(50)
	,@ma_voucher nvarchar(50)
	,@han_tu_ngay datetime
	,@han_den_ngay datetime
	,@ngay_phat_hanh datetime
)
as 
begin
	declare @temp nvarchar(50) = lower(newid())
	insert into Danh_Sach_Voucher
	values (
			@temp
			,null
			,@ngay_phat_hanh
			,'An danh'
			,null
			,null
			,@loai_voucher_id
			,@ma_voucher
			,null
			,@han_tu_ngay
			,@han_den_ngay
			,1
			,N'Chưa sử dụng'
			,null
			,null
			,null

	)
end

go
-- insert loai voucher
insert into Loai_Voucher
values (
		lower(newid())
		,GETDATE()
		,'An danh'
		,null
		,null
		,'admin'
		,'VC100'
		,'Voucher 100'
		,100000
		,1
		,1
)
insert into Loai_Voucher
values (
		lower(newid())
		,GETDATE()
		,'An danh'
		,null
		,null
		,'admin'
		,'VC200'
		,'Voucher 200'
		,200000
		,1
		,1
)
insert into Loai_Voucher
values (
		lower(newid())
		,GETDATE()
		,'An danh'
		,null
		,null
		,'admin'
		,'CC4'
		,'Voucher 500'
		,500000
		,1
		,1
)

-- Import dữ liệu voucher 100

exec import_voucher 'VC100', 'BAD0000000026', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC100', 'BAD0000000027', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC100', 'BAD0000000028', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC100', 'BAD0000000029', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC100', 'BAD0000000030', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC100', 'BAD0000000031', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC100', 'BAD0000000032', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC100', 'BAD0000000033', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC100', 'BAD0000000034', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC100', 'BAD0000000035', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC100', 'BAD0000000036', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC100', 'BAD0000000037', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC100', 'BAD0000000038', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC100', 'BAD0000000039', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC100', 'BAD0000000040', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC100', 'BAD0000000041', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC100', 'BAD0000000042', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC100', 'BAD0000000043', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC100', 'BAD0000000044', '2022/01/01', '2022/12/30', '2022/01/01'

-- Import dữ liệu voucher 200

exec import_voucher 'VC200', 'CBD0000010001', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010002', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010003', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010004', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010005', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010006', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010007', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010008', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010009', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010010', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010011', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010012', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010013', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010014', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010015', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010016', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010017', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010018', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010019', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010020', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010021', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010022', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010023', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010024', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010025', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010026', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010027', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010028', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010029', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010030', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010031', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010032', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010033', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010034', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010035', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010036', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010037', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010038', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010039', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010040', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010041', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010042', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010043', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010044', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010045', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010046', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010047', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010048', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010049', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010050', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010051', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010052', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010053', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010054', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010055', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010056', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010057', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010058', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010059', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010060', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010061', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010062', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010063', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010064', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010065', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010066', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010067', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010068', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010069', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010070', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010071', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'VC200', 'CBD0000010072', '2022/01/01', '2022/12/30', '2022/01/01'


-- Import dữ liệu voucher 500

exec import_voucher 'CC4', 'ACC0000002751', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002752', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002753', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002754', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002755', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002756', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002757', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002758', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002759', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002760', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002761', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002762', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002763', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002764', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002765', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002766', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002767', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002768', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002769', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002770', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002771', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002772', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002773', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002774', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002775', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002776', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002777', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002778', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002779', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002780', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002781', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002782', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002783', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002784', '2022/01/01', '2022/12/30', '2022/01/01'
exec import_voucher 'CC4', 'ACC0000002785', '2022/01/01', '2022/12/30', '2022/01/01'

