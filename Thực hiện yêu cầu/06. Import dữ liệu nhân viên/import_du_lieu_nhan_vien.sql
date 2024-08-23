create procedure import_Nhan_Vien
(
	@hoten nvarchar(250),
	@sdt nvarchar(50),
	@NgaySinh date,
	@email nvarchar(250),
	@cmt nvarchar(50)
)
as
begin
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
	Values
	(
		@temp
        ,'Andanh'
        ,getdate()
        ,null
        ,getdate()
        ,1
        ,'8693c070-4513-4040-917e-1dbb6738b2f6'
        ,@sdt
        ,@hoten
        ,@email
        ,null
        ,@sdt
        ,null
        ,0
        ,0
        ,null
        ,getdate()
	)
	insert into Nhan_Vien
	values 
	(
		lower(newid()),
		@temp,
		@NgaySinh,
		@cmt
	)

end


exec import_Nhan_Vien N'Trần Tuấn Nghị' ,'0980000300' ,'01/01/1980' ,'nghi.tt@testevoucher.com' ,'142728960'
exec import_Nhan_Vien N'Đinh Quang Sơn' ,'0980000301' ,'01/01/1980' ,'son.dq@testevoucher.com' ,'142728961'
exec import_Nhan_Vien N'Bùi Văn Dũng' ,'0980000302' ,'01/01/1980' ,'dung.bv@testevoucher.com' ,'142728962'
exec import_Nhan_Vien N'Phạm Thanh Tùng' ,'0980000303' ,'01/01/1980' ,'tung.pt2@testevoucher.com' ,'142728963'
exec import_Nhan_Vien N'Trần Đức Nam' ,'0980000304' ,'01/01/1980' ,'nam.td@testevoucher.com' ,'142728964'
exec import_Nhan_Vien N'Phạm Tuấn Linh' ,'0980000305' ,'01/01/1980' ,'linh.pt@testevoucher.com' ,'142728965'
exec import_Nhan_Vien N'Phan Thị Thu Hiền' ,'0980000306' ,'01/01/1980' ,'hien.ptt@testevoucher.com' ,'142728966'
exec import_Nhan_Vien N'Trần Thanh Huyền 2' ,'0980000307' ,'01/01/1980' ,'huyen.tt2@testevoucher.com' ,'142728967'
exec import_Nhan_Vien N'Nguyễn Huy Pha' ,'0980000308' ,'01/01/1980' ,'pha.nh@testevoucher.com' ,'142728968'
exec import_Nhan_Vien N'Mai Văn Dương' ,'0980000309' ,'01/01/1980' ,'duong.mv@testevoucher.com' ,'142728969'
exec import_Nhan_Vien N'Ngô Thị Nhài' ,'0980000310' ,'01/01/1980' ,'nhai.nt2@testevoucher.com' ,'142728970'
exec import_Nhan_Vien N'Nông Ngọc Sơn' ,'0980000311' ,'01/01/1980' ,'son.nn@testevoucher.com' ,'142728971'
exec import_Nhan_Vien N'Đặng Trần Hải Đăng' ,'0980000312' ,'01/01/1980' ,'dang.dth@testevoucher.com' ,'142728972'
exec import_Nhan_Vien N'Trương Thị Hoài Anh' ,'0980000313' ,'01/01/1980' ,'anh.tth2@testevoucher.com' ,'142728973'
exec import_Nhan_Vien N'Ngô Hoài Việt' ,'0980000314' ,'01/01/1980' ,'viet.nh2@testevoucher.com' ,'142728974'
exec import_Nhan_Vien N'Trần Thứ Khiêm' ,'0980000315' ,'01/01/1980' ,'khiem.tt@testevoucher.com' ,'142728975'
exec import_Nhan_Vien N'Lê Chí Kiên' ,'0980000316' ,'01/01/1980' ,'kien.lc@testevoucher.com' ,'142728976'
exec import_Nhan_Vien N'Bùi Hải Yến' ,'0980000317' ,'01/01/1980' ,'yen.bh2@testevoucher.com' ,'142728977'
exec import_Nhan_Vien N'Nguyễn Thành Trung' ,'0980000318' ,'01/01/1980' ,'trung.nt@testevoucher.com' ,'142728978'
exec import_Nhan_Vien N'Phạm Văn Thoại' ,'0980000319' ,'01/01/1980' ,'thoai.pv@testevoucher.com' ,'142728979'
exec import_Nhan_Vien N'Nguyễn Thị Minh Huyền' ,'0980000320' ,'01/01/1980' ,'huyen.ntm@testevoucher.com' ,'142728980'
exec import_Nhan_Vien N'Đậu Đức Anh' ,'0980000321' ,'01/01/1980' ,'anh.dd@testevoucher.com' ,'142728981'
exec import_Nhan_Vien N'Trương Ngọc Quang' ,'0980000322' ,'01/01/1980' ,'quang.tn@testevoucher.com' ,'142728982'
exec import_Nhan_Vien N'Vũ Anh Tuấn' ,'0980000323' ,'01/01/1980' ,'tuan.va@testevoucher.com' ,'142728983'
exec import_Nhan_Vien N'Nguyễn Thị Thanh Nga' ,'0980000324' ,'01/01/1980' ,'nga.ntt@testevoucher.com' ,'142728984'
exec import_Nhan_Vien N'Nguyễn Thị Thu Hương' ,'0980000325' ,'01/01/1980' ,'huong.ntt@testevoucher.com' ,'142728985'
exec import_Nhan_Vien N'Ngô Việt Cường' ,'0980000326' ,'01/01/1980' ,'cuong.nv@testevoucher.com' ,'142728986'
exec import_Nhan_Vien N'Lê Thị Kiều Trang' ,'0980000327' ,'01/01/1980' ,'trang.ltk@testevoucher.com' ,'142728987'
exec import_Nhan_Vien N'Nguyễn Thế Ngọc' ,'0980000328' ,'01/01/1980' ,'ngoc.nt3@testevoucher.com' ,'142728988'
exec import_Nhan_Vien N'Đỗ Thị Thái Thi' ,'0980000329' ,'01/01/1980' ,'thi.dtt@testevoucher.com' ,'142728989'
exec import_Nhan_Vien N'Vũ Tuấn Anh' ,'0980000330' ,'01/01/1980' ,'anh.vt@testevoucher.com' ,'142728990'
exec import_Nhan_Vien N'Nguyễn Thế Phong' ,'0980000331' ,'01/01/1980' ,'phong.nt@testevoucher.com' ,'142728991'
exec import_Nhan_Vien N'Đinh Anh Nam' ,'0980000332' ,'01/01/1980' ,'nam.da@testevoucher.com' ,'142728992'
exec import_Nhan_Vien N'Bùi Thị Kim Anh' ,'0980000333' ,'01/01/1980' ,'anh.btk@testevoucher.com' ,'142728993'
exec import_Nhan_Vien N'Trần Quang Định' ,'0980000334' ,'01/01/1980' ,'dinh.tq@testevoucher.com' ,'142728994'
exec import_Nhan_Vien N'Nguyễn Thị Hương Thảo' ,'0980000335' ,'01/01/1980' ,'thao.nth@testevoucher.com' ,'142728995'
exec import_Nhan_Vien N'Trần Mạnh Cường' ,'0980000336' ,'01/01/1980' ,'cuong.tm@testevoucher.com' ,'142728996'
exec import_Nhan_Vien N'Nguyễn Trung Thành' ,'0980000337' ,'01/01/1980' ,'thanh.nt2@testevoucher.com' ,'142728997'
exec import_Nhan_Vien N'Nguyễn Khắc Minh' ,'0980000338' ,'01/01/1980' ,'minh.nk@testevoucher.com' ,'142728998'
exec import_Nhan_Vien N'Đặng Phú Quý' ,'0980000339' ,'01/01/1980' ,'quy.dp@testevoucher.com' ,'142728999'
exec import_Nhan_Vien N'Nguyễn Anh Lộc' ,'0980000340' ,'01/01/1980' ,'loc.na@testevoucher.com' ,'142729000'
exec import_Nhan_Vien N'Nguyễn Duy Hà ' ,'0980000341' ,'01/01/1980' ,'ha.nd@testevoucher.com' ,'142729001'
exec import_Nhan_Vien N'Nguyễn Hồng Quân' ,'0980000342' ,'01/01/1980' ,'quan.nh@testevoucher.com' ,'142729002'
exec import_Nhan_Vien N'Nguyễn Thị Cẩm Vân' ,'0980000343' ,'01/01/1980' ,'van.ntc@testevoucher.com' ,'142729003'
exec import_Nhan_Vien N'Bùi Vũ Công' ,'0980000344' ,'01/01/1980' ,'cong.bv@testevoucher.com' ,'142729004'
exec import_Nhan_Vien N'Vũ Đình Học 2' ,'0980000345' ,'01/01/1980' ,'hoc.vd2@testevoucher.com' ,'142729005'
exec import_Nhan_Vien N'Lương Ngọc Bảo' ,'0980000346' ,'01/01/1980' ,'bao.ln@testevoucher.com' ,'142729006'
exec import_Nhan_Vien N'Nguyễn Tuấn Tuyên' ,'0980000347' ,'01/01/1980' ,'tuyen.nt@testevoucher.com' ,'142729007'
exec import_Nhan_Vien N'Trịnh Văn Thức' ,'0980000348' ,'01/01/1980' ,'thuc.tv@testevoucher.com' ,'142729008'
exec import_Nhan_Vien N'Nguyễn Thị Huệ' ,'0980000349' ,'01/01/1980' ,'hue.nt@testevoucher.com' ,'142729009'
exec import_Nhan_Vien N'Nguyễn Tiến Sự' ,'0980000350' ,'01/01/1980' ,'su.nt@testevoucher.com' ,'142729010'
exec import_Nhan_Vien N'Đinh Thị Dệt' ,'0980000351' ,'01/01/1980' ,'det.dt@testevoucher.com' ,'142729011'
exec import_Nhan_Vien N'Lương Ngọc Quang' ,'0980000352' ,'01/01/1980' ,'quang.ln@testevoucher.com' ,'142729012'
exec import_Nhan_Vien N'Hoàng Bảo Duy' ,'0980000353' ,'01/01/1980' ,'duy.hb@testevoucher.com' ,'142729013'
exec import_Nhan_Vien N'Hoàng Văn Duy' ,'0980000354' ,'01/01/1980' ,'duy.hv@testevoucher.com' ,'142729014'
exec import_Nhan_Vien N'Đào Thị Ngọc Tú' ,'0980000355' ,'01/01/1980' ,'tu.dtn@testevoucher.com' ,'142729015'
exec import_Nhan_Vien N'Phạm Ngọc Hiếu' ,'0980000356' ,'01/01/1980' ,'hieu.pn@testevoucher.com' ,'142729016'
exec import_Nhan_Vien N'Lê Thành Long' ,'0980000357' ,'01/01/1980' ,'long.lt@testevoucher.com' ,'142729017'
exec import_Nhan_Vien N'Lê Trường Sơn' ,'0980000358' ,'01/01/1980' ,'son.lt@testevoucher.com' ,'142729018'
exec import_Nhan_Vien N'Vũ Quỳnh Nam' ,'0980000359' ,'01/01/1980' ,'nam.vq@testevoucher.com' ,'142729019'
exec import_Nhan_Vien N'Nguyễn Việt Tiến' ,'0980000360' ,'01/01/1980' ,'tien.nv@testevoucher.com' ,'142729020'
exec import_Nhan_Vien N'Trần Quang Huy' ,'0980000361' ,'01/01/1980' ,'huy.tq@testevoucher.com' ,'142729021'
exec import_Nhan_Vien N'Ngô Quốc Thắng' ,'0980000362' ,'01/01/1980' ,'thang.nq@testevoucher.com' ,'142729022'
exec import_Nhan_Vien N'Trần Thanh Nhàn' ,'0980000363' ,'01/01/1980' ,'nhan.tt@testevoucher.com' ,'142729023'
exec import_Nhan_Vien N'Nguyễn Văn Sinh' ,'0980000364' ,'01/01/1980' ,'sinh.nv@testevoucher.com' ,'142729024'
exec import_Nhan_Vien N'Nguyễn Xuân Bách' ,'0980000365' ,'01/01/1980' ,'bach.nx@testevoucher.com' ,'142729025'
exec import_Nhan_Vien N'Trương Thị Thu Hiền' ,'0980000366' ,'01/01/1980' ,'hien.ttt@testevoucher.com' ,'142729026'
exec import_Nhan_Vien N'Nguyễn Đắc Đức' ,'0980000367' ,'01/01/1980' ,'duc.nd@testevoucher.com' ,'142729027'
exec import_Nhan_Vien N'Vũ Việt Hà' ,'0980000368' ,'01/01/1980' ,'ha.vv@testevoucher.com' ,'142729028'
exec import_Nhan_Vien N'Phạm Duy Lợi' ,'0980000369' ,'01/01/1980' ,'loi.pd@testevoucher.com' ,'142729029'
exec import_Nhan_Vien N'Nguyễn Thanh Tùng 3' ,'0980000370' ,'01/01/1980' ,'tung.nt3@testevoucher.com' ,'142729030'
exec import_Nhan_Vien N'Nguyễn Nhật Mai' ,'0980000371' ,'01/01/1980' ,'mai.nn@testevoucher.com' ,'142729031'
exec import_Nhan_Vien N'Nguyễn Thị Hà' ,'0980000372' ,'01/01/1980' ,'ha.nt@testevoucher.com' ,'142729032'
exec import_Nhan_Vien N'Phạm Thị Thanh' ,'0980000373' ,'01/01/1980' ,'thanh.pt@testevoucher.com' ,'142729033'
exec import_Nhan_Vien N'Trần Thị Thu Hà' ,'0980000374' ,'01/01/1980' ,'Ha.ttt@anphuhomes.vn' ,'142729034'
exec import_Nhan_Vien N'Evans Carroll Mahoney' ,'0980000375' ,'01/01/1980' ,'Evans.Mahoney@testevoucher.com' ,'142729035'
exec import_Nhan_Vien N'Brett Saggus David' ,'0980000376' ,'01/01/1980' ,'bsaggus@hotmail.com' ,'142729036'
exec import_Nhan_Vien N'Emiliano Bonilla Zaragoza' ,'0980000377' ,'01/01/1980' ,'emil.zaragoza@dananggolfclub.com' ,'142729037'
exec import_Nhan_Vien N'Heath Glasby' ,'0980000378' ,'01/01/1980' ,'heath.glasby@testevoucher.com' ,'142729038'
exec import_Nhan_Vien N'Jonathan Cameron Wall ' ,'0980000379' ,'01/01/1980' ,'jonathan.wall@dananggolfclub.com' ,'142729039'
exec import_Nhan_Vien N'Cao Việt Bách' ,'0980000380' ,'01/01/1980' ,'bach.cv@testevoucher.com' ,'142729040'
exec import_Nhan_Vien N'Nguyễn Quang Hóa' ,'0980000381' ,'01/01/1980' ,'kpihoa.nq@testevoucher.com' ,'142729041'
exec import_Nhan_Vien N'Hà Chi' ,'0980000382' ,'01/01/1980' ,'chi.h@testevoucher.com' ,'142729042'
exec import_Nhan_Vien N'Nguyễn Thái Dũng' ,'0980000383' ,'01/01/1980' ,'dung.nt4@testevoucher.com' ,'142729043'
exec import_Nhan_Vien N'Phạm Thị Hồng Vân' ,'0980000384' ,'01/01/1980' ,'van.pth@testevoucher.com' ,'142729044'
exec import_Nhan_Vien N'Madame Nguyễn Thị Nga' ,'0980000385' ,'01/01/1980' ,'madameNga@testevoucher.com' ,'142729045'
exec import_Nhan_Vien N'Ông Lê Hữu Báu' ,'0980000386' ,'01/01/1980' ,'bau.lh@testevoucher.com' ,'142729046'
exec import_Nhan_Vien N'Nguyễn Quang Minh' ,'0980000387' ,'01/01/1980' ,'minh.nq@testevoucher.com' ,'142729047'
exec import_Nhan_Vien N'Nguyễn Văn Vinh' ,'0980000388' ,'01/01/1980' ,'kpivinh.nv@brggoup.vn' ,'142729048'
exec import_Nhan_Vien N'Nguyễn Văn Cường' ,'0980000389' ,'01/01/1980' ,'kpicuong.nv2@testevoucher.com' ,'142729049'
exec import_Nhan_Vien N'Hồ Thị Việt' ,'0980000390' ,'01/01/1980' ,'viet.ht@testevoucher.com' ,'142729050'
exec import_Nhan_Vien N'Vũ Lê Minh Ngọc' ,'0980000391' ,'01/01/1980' ,'ngoc.vlm@testevoucher.com' ,'142729051'
exec import_Nhan_Vien N'Vũ Thị Hạnh' ,'0980000392' ,'01/01/1980' ,'hanh.vt@testevoucher.com' ,'142729052'
exec import_Nhan_Vien N'Nguyễn Thị Yến' ,'0980000393' ,'01/01/1980' ,'yen.nt@testevoucher.com' ,'142729053'
exec import_Nhan_Vien N'Đinh Mạnh Thắng' ,'0980000394' ,'01/01/1980' ,'manhthanghue@gmail.com' ,'142729054'
exec import_Nhan_Vien N'Đinh Thị Thu Hiền' ,'0980000395' ,'01/01/1980' ,'hien.dtt@testevoucher.com' ,'142729055'
exec import_Nhan_Vien N'Trịnh Thị Hiền' ,'0980000396' ,'01/01/1980' ,'hien.tt3@testevoucher.com' ,'142729056'
exec import_Nhan_Vien N'Phạm Thanh Tùng' ,'0980000397' ,'01/01/1980' ,'tung.pt3@testevoucher.com' ,'142729057'
exec import_Nhan_Vien N'Trần Thị Thục Lê' ,'0980000398' ,'01/01/1980' ,'le.ttt@testevoucher.com' ,'142729058'
exec import_Nhan_Vien N'Nguyễn Hữu Khôi' ,'0980000399' ,'01/01/1980' ,'khoi.nh@testevoucher.com' ,'142729059'
exec import_Nhan_Vien N'Nguyễn Thị Khánh Huyền' ,'0980000400' ,'01/01/1980' ,'huyen.ntk@testevoucher.com' ,'142729060'
exec import_Nhan_Vien N'Phan Văn Đồng' ,'0980000401' ,'01/01/1980' ,'dong.pv@testevoucher.com' ,'142729061'
exec import_Nhan_Vien N'Nguyễn Thu Hà' ,'0980000402' ,'01/01/1980' ,'ha.nt3@testevoucher.com' ,'142729062'
exec import_Nhan_Vien N'Phạm Thùy Dung' ,'0980000403' ,'01/01/1980' ,'dung.pt@testevoucher.com' ,'142729063'
exec import_Nhan_Vien N'Vũ Thị Thêu' ,'0980000404' ,'01/01/1980' ,'theu.vt@testevoucher.com' ,'142729064'
exec import_Nhan_Vien N'Đỗ Thị Phương Thảo' ,'0980000405' ,'01/01/1980' ,'thao.dtp@testevoucher.com' ,'142729065'
exec import_Nhan_Vien N'Bùi Xuân Trường' ,'0980000406' ,'01/01/1980' ,'truong.bx@testevoucher.com' ,'142729066'
exec import_Nhan_Vien N'Trần Văn Thọ' ,'0980000407' ,'01/01/1980' ,'tho.tv@testevoucher.com' ,'142729067'
exec import_Nhan_Vien N'Nguyễn Đức Tâm' ,'0980000408' ,'01/01/1980' ,'tam.nd@testevoucher.com' ,'142729068'
exec import_Nhan_Vien N'Nguyễn Hữu Nam' ,'0980000409' ,'01/01/1980' ,'nam.nh@testevoucher.com' ,'142729069'
exec import_Nhan_Vien N'Cấn Văn Chăm' ,'0980000410' ,'01/01/1980' ,'cham.cv@testevoucher.com' ,'142729070'
exec import_Nhan_Vien N'Nguyễn Minh Hưng' ,'0980000411' ,'01/01/1980' ,'hung.nm2@testevoucher.com' ,'142729071'
exec import_Nhan_Vien N'Nguyễn Lê Đình Khánh' ,'0980000412' ,'01/01/1980' ,'khanh.nld@testevoucher.com' ,'142729072'
exec import_Nhan_Vien N'Trần Thành Long' ,'0980000413' ,'01/01/1980' ,'long.tt@testevoucher.com' ,'142729073'
exec import_Nhan_Vien N'Nguyễn Ngọc Hưng' ,'0980000414' ,'01/01/1980' ,'hung.nn@testevoucher.com' ,'142729074'