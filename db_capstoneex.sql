DROP DATABASE IF EXISTS db_capstoneex;
CREATE DATABASE db_capstoneex;
USE db_capstoneex;


CREATE TABLE nguoi_dung (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) UNIQUE NOT NULL,
    mat_khau VARCHAR(255) NOT NULL,
    ho_ten VARCHAR(255) NOT NULL,
    tuoi INTEGER NOT NULL,
    anh_dai_dien VARCHAR(255) NOT NULL
);

CREATE TABLE hinh_anh (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    ten_hinh VARCHAR(255) NOT NULL,
    duong_dan VARCHAR(255) NOT NULL,
	mo_ta VARCHAR(255) NOT NULL,
	nguoi_dung_id INTEGER NOT NULL,
    FOREIGN KEY(nguoi_dung_id) REFERENCES nguoi_dung(id)
   
);


CREATE TABLE binh_luan (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    nguoi_dung_id INTEGER NOT NULL,
    hinh_id INTEGER NOT NULL,
    ngay_binh_luan TIMESTAMP DEFAULT NOW(),
    noi_dung VARCHAR(255) NOT NULL,
	FOREIGN KEY(hinh_id) REFERENCES hinh_anh(id),
    FOREIGN KEY(nguoi_dung_id) REFERENCES nguoi_dung(id)
    
);

CREATE TABLE luu_anh (
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
     nguoi_dung_id INTEGER NOT NULL,
     hinh_id INTEGER NOT NULL,
     ngay_luu TIMESTAMP DEFAULT NOW(),
	FOREIGN KEY(hinh_id) REFERENCES hinh_anh(id),
	FOREIGN KEY(nguoi_dung_id) REFERENCES nguoi_dung(id)
);


INSERT INTO nguoi_dung (email, mat_khau,ho_ten, tuoi, anh_dai_dien ) VALUES ('namdao@gmail.com', 'namdao','namdap',34,'aaaaaa'),('kay@gmail.com', 'kay12','kay',19,'visualcode'),('lam@gmail.com', 'lam12','lam',21,'lalaka'),('wow@gmail.com', 'wow12','wow',22,'wowowo'),('zey@gmail.com', 'zey12','zey',23,'afdiow');
INSERT INTO hinh_anh (ten_hinh, duong_dan, mo_ta, nguoi_dung_id) 
VALUES   ('1.jpg','https://images.pexels.com/photos/13398438/pexels-photo-13398438.jpeg','we','1'),
('2.jpg','https://images.pexels.com/photos/13398438/pexels-photo-13398438.jpeg','ưee','2'),
('3.jpg','https://images.pexels.com/photos/13398438/pexels-photo-13398438.jpeg','ưe','3'),
('4.jpg','https://images.pexels.com/photos/13398438/pexels-photo-13398438.jpeg','ưe','4'),
('5.jpg','https://images.pexels.com/photos/13398438/pexels-photo-13398438.jpeg','ưe','5')
;
INSERT INTO binh_luan (nguoi_dung_id, hinh_id, ngay_binh_luan, noi_dung) 
VALUES ('1','5','2024-01-01','haha'),
('2','4','2024-01-03','wow'),
('3','3','2024-01-04','good'),
('4','2','2024-01-05','yeah'),
('5','1','2024-01-06','cool')
;
INSERT INTO luu_anh (nguoi_dung_id, hinh_id, ngay_luu)
VALUES ('1','4','2022-01-09'),
('3','5','2024-01-10'),
('2','3','2024-01-11'),
('5','2','2024-01-12'),
('4','1','2024-01-13')
;




















