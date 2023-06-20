
INSERT INTO Khoa VALUES
("Geo","Dia ly va QLTN",3855413),
("Math","Toan",3855411),
("Bio","Cong nghe Sinh hoc",3855412);

INSERT INTO GiangVien VALUES
(11,"Thanh Xuan",700,"Geo"),
(12,"Thu Minh",500,"Math"),
(13,"Chu Tuan",650,"Geo"),
(14,"Le Thi Lan",500,"Bio"),
(15,"Tran Xoay",900,"Math");

INSERT INTO SinhVien VALUES
(1,"Le Van Sao","Bio",1990,"Nghe An"),
(2,"Nguyen Thi My","Geo",1990,"Thanh Hoa"),
(3,"Bui Xuan Duc","Math",1992,"Ha Noi"),
(4,"Nguyen Van Tung","Bio",null,"Ha Tinh"),
(5,"Le Khanh Linh","Bio",1989,"Ha Nam"),
(6,"Tran Khac Trong","Geo",1991,"Thanh Hoa"),
(7,"Le Thi Van","Math",null,"null"),
(8,"Hoang Van Duc","Bio",1992,"Nghe An");
INSERT INTO DeTai VALUES
("Dt01","GIS",100,"Nghe An"),
("Dt02","ARC GIS",500,"Nam Dinh"),
("Dt03","Spatial DB",100, "Ha Tinh"),
("Dt04","MAP",300,"Quang Binh" );
INSERT INTO HuongDan VALUES
(1,"Dt01",13,8),
(2,"Dt03",14,0),
(3,"Dt03",12,10),
(5,"Dt04",14,7),
(6,"Dt01",13,Null),
(7,"Dt04",11,10),
(8,"Dt03",15,6);

SELECT DeTai.madt, DeTai.tendt
FROM DeTai
INNER JOIN HuongDan ON DeTai.madt = HuongDan.madt
GROUP BY DeTai.madt, DeTai.tendt
HAVING COUNT(HuongDan.masv) > 2;

SELECT madt, tendt
FROM DeTai
WHERE kinhphi = (SELECT MAX(kinhphi) FROM DeTai);

SELECT Khoa.tenkhoa, COUNT(SinhVien.masv) AS soLuongSinhVien
FROM Khoa
LEFT JOIN SinhVien ON Khoa.makhoa = SinhVien.makhoa
GROUP BY Khoa.tenkhoa;

