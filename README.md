# Bài Tập EVoucher

## Giới Thiệu

Bài tập này tập trung vào việc xây dựng và quản lý hệ thống EVoucher. Quy trình bao gồm việc tạo cơ sở dữ liệu, thiết kế và tạo các bảng chức năng chung, viết các stored procedure nghiệp vụ, và thực hiện các chức năng liên quan đến EVoucher.

## Quy Trình

1. **Tạo Database cho bài tập**.

2. **Thiết kế và tạo các bảng chức năng chung** như `App_User`, `App_Menu`, `App_Role`, `App_Org`, `App_Setting`, `App_File`, `App_Dic_Domain`, `App_Sequence`, `App_Log`, `App_Role_Menu_Ref`, `App_User_Org_Ref`, và `App_User_Role_Ref`.

3. **Tạo các stored procedure nghiệp vụ** cho mỗi bảng chức năng chung như thêm, sửa, xóa, get by id, và get paging.

4. **Thiết kế bảng dữ liệu nghiệp vụ EVoucher** như `Nhân viên`, `Danh mục loại voucher`, `Danh sách voucher`, và `Quản lý ngân sách voucher`.

5. **Tạo các stored procedure nghiệp vụ** cho mỗi bảng chức năng nghiệp vụ EVoucher như thêm, sửa, xóa, get by id, và get paging.

6. **Import dữ liệu nhân viên**.

7. **Import dữ liệu ngân sách**.

8. **Import dữ liệu voucher**.

9. **Viết procedure thực hiện chức năng phân bổ voucher**.

10. **Viết procedure thực hiện chức năng phân bổ mã voucher**.

11. **Viết procedure thực hiện nghiệp vụ sử dụng voucher**.

12. **Viết procedure báo cáo số lượng và giá trị voucher đã phân bổ theo tháng**.