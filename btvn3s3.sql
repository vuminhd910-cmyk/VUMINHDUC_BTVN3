create database user ; 
use user; 
create table customers ( 
 CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FullName VARCHAR(100),
    Email VARCHAR(100),
    City VARCHAR(50),
    LastPurchaseDate DATE,
    Status VARCHAR(20),
    Gender VARCHAR(10),
    DateOfBirth DATE,
    Points INT,
    Address VARCHAR(255) 
) ; 
insert into customers (FullName, Email, City, LastPurchaseDate, Status)
values 
  ('Nguyễn Văn A', 'anv@gmail.com', 'Hà Nội', '2025-05-20', 'Active'), 
    ('Trần Thị B', 'btt@gmail.com', 'Hà Nội', '2026-02-10', 'Active'),
    ('Lê Văn C', NULL, 'Hà Nội', '2025-01-15', 'Active'),              -- Lỗi: Không có Email
    ('Phạm Minh D', 'dpm@gmail.com', 'Hà Nội', '2024-12-01', 'Locked'), -- Lỗi: Tài khoản bị khóa
    ('Hoàng An E', 'eha@gmail.com', 'TP HCM', '2025-03-01', 'Active');  -- Lỗi: Sai thành phố 
    SELECT FULLNAME,EMAIL FROM CUSTOMERS
    WHERE CITY = 'HÀ NỘI'AND LastPurchaseDate < '2025-10-16' AND EMAIL IS NOT NULL AND STATUS !='LOCKED'; 
    
    -- input 
    -- lấy dữ liệu đầu vào , bảng cần quét là customers 
    -- điều kiện lọc : kiểm tra cột email và fullname 
    -- output 
    -- là danh sách tên và email của các khách hàng đã không mua hàng trong hơn  6 tháng 
