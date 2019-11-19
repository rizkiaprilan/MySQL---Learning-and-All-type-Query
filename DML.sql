
INSERT INTO Category VALUES
	('TY001','Sepak bola'),
	('TY002','Sepeda'),
	('TY003','Gym & Fitness'),
	('TY004','Basket'),
	('TY005','Renang & Diving'),
	('TY006','Outdoor Sport'),
	('TY007','Alat Pancing'),
	('TY008','Badminton'),
	('TY009','Tenis'),
	('TY010','Airsoft Gun')

INSERT INTO Brand VALUES
	('BR001','NIKE','Amerika'),
	('BR002','ADIDAS','Jerman'),
	('BR003','POLIGON','Indonesia'),
	('BR004','KETTLER','Jerman'),
	('BR005','MOLTEN','jerman'),
	('BR006','ARDILES','Indonesia'),
	('BR007','SLEEVE','Inggris'),
	('BR008','MUMTAAZ','Indonesia'),
	('BR009','SPEEDO','Indonesia'),
	('BR010','ATUNAS','Malaysia'),
	('BR011','BLACKHAWK','Jepang'),
	('BR012','LUMENS','Jerman'),
	('BR013','QUECHUA','Meksiko'),
	('BR014','MINNOW','Italia'),
	('BR015','FISHING','Indonesia'),
	('BR016','APECS','Indonesia'),
	('BR017','YONEX','Jepang'),
	('BR018','JP GOLD','Amerika'),
	('BR019','WILSON','Amerika'),
	('BR020','BABOLAR','Jepang'),
	('BR021','ALPINESTAR','Amerika'),
	('BR022','WIREMESH ','Belanda'),
	('BR023','BE SAFE','Kanada')

INSERT INTO Item VALUES
	('IT001','BR001','TY001','Jersey',85000,100),
	('IT002','BR001','TY001','Manset',75000,56),
	('IT003','BR001','TY001','Sepatu',890000,20),
	('IT004','BR002','TY001','Jersey',99000,100),
	('IT005','BR002','TY001','Manset',67000,70),
	('IT006','BR002','TY001','Sepatu',1250000,7),
	('IT007','BR003','TY002','Sepeda',3750000,5),
	('IT008','BR003','TY002','Helm',260000,10),
	('IT009','BR004','TY003','Dumbell',400000,25),
	('IT010','BR004','TY003','Slamball',150000,5),
	('IT011','BR004','TY003','Matrass Yoga',120000,6),
	('IT012','BR005','TY004','Basket Ball',650000,10),
	('IT013','BR006','TY004','Sepatu Aridiles Men Pride',1020000,4),
	('IT014','BR007','TY004','Arm Sleeve Pad',150000,20),
	('IT015','BR007','TY004','Leg Sleeve Pad',150000,20),
	('IT016','BR008','TY005','Baju Renang Muslimah',225000,5),
	('IT017','BR009','TY005','Kacamata Renang',120000,14),
	('IT018','BR009','TY005','Kaki Renang Katak',420000,3),
	('IT019','BR010','TY005','Jaket Pelampung',200000,10),
	('IT020','BR011','TY006','Celana Cargo',125000,5),
	('IT021','BR012','TY006','Senter Kepala',500000,2),
	('IT022','BR013','TY006','Tas Ransel',300000,2),
	('IT023','BR014','TY007','Umpan Pancing',15000,200),
	('IT024','BR015','TY007','Fishing Rod',330000,20),
	('IT025','BR016','TY008','Raket Badminton',900000,10),
	('IT026','BR017','TY008','Kaos',600000,20),
	('IT027','BR017','TY008','Tas Raket Badminton',450000,5),
	('IT028','BR017','TY008','Raket Badminton',750000,10),
	('IT029','BR018','TY008','Shuttlecock',50000,15),
	('IT030','BR019','TY009','Raket Tenis',1300000,5),
	('IT031','BR020','TY009','Tas Raket Tenis',400000,5),
	('IT032','BR021','TY010','Balaclava',100000,5),
	('IT033','BR022','TY010','Half Mask',120000,5),
	('IT034','BR023','TY010','Kacamata Safety',20000,5)

INSERT INTO Position VALUES 
	('PO001','Cashier', 3500000), 
	('PO002','Accountant', 3800000),
	('PO003','Sales', 3900000),
	('PO004','Supervisor',4200000),
	('PO005','Officer', 5000000),
	('PO006','Manager', 6200000),
	('PO007','Cashier',3500000),
	('PO008','Sales', 3900000),
	('PO009','Accountant', 3800000),
	('PO010','Officer', 5000000)

INSERT INTO Staff VALUES
	('ST001','PO006','Mhd Rezki Aprilan','Male','1999/04/08','2005/12/01'),
	('ST002','PO002','Benyamin Tandiono','Male','1999/05/16','2008/06/04'),
	('ST003','PO003','Farhad Famser','Male','1999/06/02','2007/12/08'),
	('ST004','PO004','Armando Wikan','Male','1999/12/11','2006/12/02'),
	('ST005','PO005','Kunta Rizki Purnama','Male','1999/06/16','2006/12/02'),
	('ST006','PO010','Clarissa Aulia','Female','1990/09/21','2012/06/03'),
	('ST007','PO007','Kassandra Tania','Female','1980/04/12','2012/06/03'), 
	('ST008','PO009','Sania Aulia Putri','Female','1994/09/08','2006/12/11'),
	('ST009','PO008','Valentina Christy','Female','1992/01/09','2005/10/21'),
	('ST010','PO001','Sally Hernecia','Female','1997/01/08','2005/12/10')

INSERT INTO Header_Sales_Transaction VALUES
	('SA001','ST001','2018/07/14'),
	('SA002','ST002','2018/03/11'),
	('SA003','ST003','2018/05/22'),
	('SA004','ST004','2018/08/02'),
	('SA005','ST005','2018/01/31'),
	('SA006','ST006','2018/05/15'),
	('SA007','ST007','2018/08/17'),
	('SA008','ST008','2018/04/18'),
	('SA009','ST009','2018/09/28'),
	('SA010','ST010','2018/11/14'),
	('SA011','ST001','2018/10/12'),
	('SA012','ST002','2018/06/13'),
	('SA013','ST003','2018/12/01'),
	('SA014','ST004','2018/05/17'),
	('SA015','ST005','2018/02/21'),
	('SA016','ST006','2018/01/13'),
	('SA017','ST007','2018/04/08'),
	('SA018','ST008','2018/11/15'),
	('SA019','ST009','2018/12/17'),
	('SA020','ST010','2018/01/01'),
	('SA021','ST001','2018/08/17'),
	('SA022','ST002','2018/06/09'),
	('SA023','ST003','2018/05/21'),
	('SA024','ST004','2018/09/16'),
	('SA025','ST005','2018/07/03')

INSERT INTO Header_Purchases_Transaction VALUES
	('PU001','ST001','2018/07/19'),
	('PU002','ST002','2018/03/16'),
	('PU003','ST003','2018/05/27'),
	('PU004','ST004','2018/08/07'),
	('PU005','ST005','2018/01/26'),
	('PU006','ST006','2018/05/20'),
	('PU007','ST007','2018/08/22'),
	('PU008','ST008','2018/04/23'),
	('PU009','ST009','2018/09/23'),
	('PU010','ST010','2018/11/19'),
	('PU011','ST001','2018/10/12'),
	('PU012','ST002','2018/06/13'),
	('PU013','ST003','2018/12/01'),
	('PU014','ST004','2018/05/17'),
	('PU015','ST005','2018/02/21'),
	('PU016','ST006','2018/01/13'),
	('PU017','ST007','2018/04/08'),
	('PU018','ST008','2018/11/15'),
	('PU019','ST009','2018/12/17'),
	('PU020','ST010','2018/01/01'),
	('PU021','ST001','2018/08/17'),
	('PU022','ST002','2018/06/09'),
	('PU023','ST003','2018/05/21'),
	('PU024','ST004','2018/09/16'),
	('PU025','ST005','2018/07/03')

INSERT INTO Detail_Sales_Transaction VALUES
	('SA001','IT001',50),
	('SA001','IT002',28),
	('SA001','IT006',3),
	('SA002','IT002',28),
	('SA002','IT026',10),
	('SA003','IT003',10),
	('SA004','IT004',50),			
	('SA005','IT005',35),
	('SA005','IT027',2),
	('SA006','IT006',3),
	('SA006','IT028',5),
	('SA007','IT007',2),
	('SA008','IT008',5),
	('SA009','IT009',12),
	('SA010','IT010',2),
	('SA011','IT011',3),
	('SA011','IT029',7),
	('SA011','IT030',2),
	('SA011','IT031',2),
	('SA012','IT012',5),
	('SA013','IT013',2),
	('SA014','IT014',10),
	('SA015','IT015',10),
	('SA015','IT032',2),
	('SA016','IT016',2),
	('SA017','IT017',7),
	('SA018','IT018',1),
	('SA019','IT019',5),
	('SA020','IT020',3),
	('SA021','IT021',1),
	('SA021','IT033',2),
	('SA022','IT022',1),
	('SA023','IT023',100),
	('SA024','IT024',10),
	('SA025','IT025',5),
	('SA025','IT024',10)

INSERT INTO Detail_Purchases_Transaction VALUES
	('PU001','IT001',50),
	('PU002','IT002',28),
	('PU002','IT026',10),				
	('PU003','IT003',10),
	('PU004','IT004',50),
	('PU004','IT027',3),
	('PU005','IT005',35),
	('PU006','IT006',4),
	('PU006','IT028',5),
	('PU007','IT007',3),
	('PU008','IT008',5),
	('PU008','IT029',8),
	('PU009','IT009',13),
	('PU010','IT010',3),
	('PU010','IT030',3),
	('PU011','IT011',3),
	('PU012','IT012',5),
	('PU012','IT031',3),
	('PU013','IT013',2),
	('PU014','IT014',10),
	('PU014','IT032',3),
	('PU015','IT015',10),
	('PU016','IT016',3),
	('PU016','IT033',3),
	('PU017','IT017',7),
	('PU018','IT018',2),
	('PU018','IT034',3),
	('PU019','IT019',5),
	('PU020','IT020',3),
	('PU021','IT021',1),
	('PU022','IT022',1),
	('PU023','IT023',100),
	('PU024','IT024',10),
	('PU025','IT025',5)