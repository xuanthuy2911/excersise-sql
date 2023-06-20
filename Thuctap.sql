CREATE DATABASE ThucTap;
USE ThucTap;
CREATE TABLE Khoa (
    makhoa CHAR(10) PRIMARY KEY,
    tenkhoa CHAR(30),
    dienthoai CHAR(10)
);

CREATE TABLE GiangVien (
    magv INT PRIMARY KEY,
    hotengv CHAR(30),
    luong DECIMAL(5,2),
    makhoa CHAR(10),
    FOREIGN KEY (makhoa) REFERENCES Khoa(makhoa)
);

CREATE TABLE SinhVien (
    masv INT PRIMARY KEY,
    hotensv CHAR(30),
    makhoa CHAR(10),
    namsinh INT,
    quequan CHAR(30),
    FOREIGN KEY (makhoa) REFERENCES Khoa(makhoa)
);

CREATE TABLE DeTai (
    madt CHAR(10) PRIMARY KEY,
    tendt CHAR(30),
    kinhphi INT,
    NoiThucTap CHAR(30)
);

CREATE TABLE HuongDan (
    masv INT,
    madt CHAR(10),
    magv INT,
    ketqua DECIMAL(5,2),
    PRIMARY KEY (masv, madt, magv),
    FOREIGN KEY (masv) REFERENCES SinhVien(masv),
    FOREIGN KEY (madt) REFERENCES DeTai(madt),
    FOREIGN KEY (magv) REFERENCES GiangVien(magv)
);