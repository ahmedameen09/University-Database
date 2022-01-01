INSERT INTO students(sid, sname, ssn, GPA, gender, units, class, phone, address)
VALUES
('20180656','Ali Wael saied ','442',2.76,'Male',88,'2018','831-9370',' 37 Saad Zaghloul St., RAML STATION ,Alex'),
('20190652','Hussein El masry ','490',3.01,'Male',64,'2019','251-2261','9th Zone, Borg El-Arab ,ALEX'),
('20170565','Ahmed Mohamed Farag','331',2.65,'Male',101,'2017','620-3394','Obour Bldgs. 5 Mohamed Farid St., Falameng ,ALEX'),
('20150333','Ahmed ibrahim elryan ','202',3.65,'Male',129,'2015','619-9044','16B Dr.Mahmoud Ahmed El-Hofny St., GARDEN '),
('20180444','Haitham Mohamed said ','596',2.42,'Male',135,'2018','383-8855','48 Thawra St., Mohandessin , Giza'),
('20180354','Yousef Mohamed ','651',3.88,'Male',70,'2018','756-8455',' Al-Ahram Bldg. Al-Galaa St., DOWNTOWN ,Cairo'),
('20170665','Amged Osama Elsayed ','982',2.92,'Male',112,'2017','305-0044','16 Almaza St., HELIOPOLIS ,Cairo '),
('20190442','Ahmed Mohamed El sayed ','542',2.33,'Male',144,'2019','749-7087','  6 Shagaret El-Dor St., Zamalek ,  Cairo'),
('20180659','Ibrahim Abdelfatah ','234',3.05,'Male',99,'2018','921-4168',' 9 Elfawatem St, Elsultan Hussien, Alexandria'),
('20170256','Sayed Abdelshafy Mohamed ','656',1.99,'Male',80,'2017','689-2205','14 Tahrir Sq., Down town , Alexandria');

INSERT INTO ssuper(  ssname, ssn,  job, gender,phone, address,sid)
VALUES
('Wael Saied ','565','Teacher','Male','831-9370',' 37 Saad Zaghloul St., RAML STATION ,Alex','20180656'),
('Elmasry Mohamed Esmail','235','Doctor ','Male','251-2261','9th Zone, Borg El-Arab ,ALEX','20190652'),
('Mohamed Farag Elsayed ','617','Engineer','Male','620-3394','Obour Bldgs. 5 Mohamed Farid St., Falameng ,ALEX','20170565'),
('Ibrahim elryan Mohamed ','598','Officer','Male','619-9044','16B Dr.Mahmoud Ahmed El-Hofny St., GARDEN ','20150333'),
('Mohamed said gharrib','112','lawyer','Male','383-8855','48 Thawra St., Mohandessin , Giza','20180444'),
('Mohamed Ahmed shaban','901','farmer','Male','756-8455',' Al-Ahram Bldg. Al-Galaa St., DOWNTOWN ,Cairo','20180354'),
('Osama Elsayed mousa ','141','worker','Male','305-0044','16 Almaza St., HELIOPOLIS ,Cairo ','20170665'),
('Mohamed EL syaed soror','975','trader','Male','749-7087','  6 Shagaret El-Dor St., Zamalek ,  Cairo','20190442'),
(' Abdelfatah Ahmed anwar','886','pilot','Male','921-4168',' 9 Elfawatem St, Elsultan Hussien, Alexandria','20180659'),
(' Abdelshafy Mohamed hussein','555','carpenter','Male','689-2205','14 Tahrir Sq., Down town , Alexandria','20170256');

INSERT INTO prof(  pid, pname, ssn, gender, salary, Phd, R_interst, phone, address)
VALUES
('3213006','Essam khalifa ','667','Male',3000,'2000','computer architecture',' 831-1151','Masaken Nerco, 24 A; El-Zahraa St.; Degla'),
('3000516','shady mohamed anas','411','Male',5000,'1994','computer Algorithms',' 251-2261','23 El Homesani St. El Mataria - Cairo, Cairo'),
('3000100','Mohamed fathy','301','Male',4500,'1997','structure 1',' 620-3394','16 El Makrizy St., MANSHEYET EL BAKRY'),
('2231451','Mohamed mostafa mahmoud','210','Male',3200,'2007','Compute programming','619-9044','7 Asmaa Fahmy St., Ard El-Golf'),
('2003151','Mahmoud Malek ','558','Male',6000,'1990','Reinforced Concrete ','383-2145','115 El-Thawra St., Heliopolis');

INSERT INTO dem(  did, dname, ssn, gender, salary, BE, R_interst, phone, address)
VALUES
('3213008','Ibrahim Mohamed ahmed','601','Male',1500,'2000','computer architecture','831-1121',' 17 Beirut St., Cross Beirut and Domascus St.'),
('3000161','shady abdelsallam ','487','Male',1200,'1994','computer Algorithms','251-5151','3 Mossadak St., 1st floor'),
('3000111','Ahmed saad ','303','Male',2230,'1997','structure 1','620-3612','6 Tarh El-Bahr and Kaitbay St., El-Sharq'),
('2231501','elryan mostafa ','295','Male',2330,'2007','Compute programming','619-5555',' Borg El Arab City Plot 5 Block 15, Giza'),
('2003161','Malek fouad ','599','Male',3100,'1990','Reinforced Concrete ','383-2130','25 Shehab St., MOHANDESEEN'),
('2000151','issac hanen ','267','Male',3190,'2015','computer c programmign','383-2130','7 Ismail Mohamed St, P.O. Box: 11211'),
('1000101','Mohamed el gabry ','707','Male',4000,'2016','concrete material ','383-2130','6 Hayaat El-Tadris Sq., DOKKI'),
('1000505','ramy ismail mohamed ','101','Male',4010,'2010','Os design ','383-2130','11 Emad El-Din St., Down Town');

INSERT INTO adm( ssn,aid,  aname, work_s, salary, grad , gender,address,phone)
VALUES
('776','19991515','Mohamed ibrahim sleem ','chief administrator',10000,'1997','male','18B El-Maraashli St., Zamalek','831-1515'),
('441','19994151','Gaber mohamed el turky ','department header',9000,'1990','male','28 Ramsis St., DOWNTOWN','251-7912');

INSERT INTO subjects( Sname,scode, prereq)
VALUES
('Computer Science Fundemental ','CSC 112',Null ),	
('Computer Engineering 1','CSC 113','CSC 001'),						
('Computer Engineering 2','CSC 114','CSC 113'),						
('Computer Engineering 3','CSC 115','CSC 114'),						
('Computer Engineering 4','CSC 116','CSC 115'),						
('Computer Engineering 5','CSC 117','CSC 116'),						
('computer architecture','CSC 216','CSC 117'),						
('Computer Networks','CSC 312','CSC 216'),						
('Computer programming ','CSC 234','CSC 312'),						
('Computer Os ','CSC 512','CSC 234'),						
('computer Algorithms','CSC 101 ','CSC 512'),						
('structure 1','CIV 124',Null ),						
('structure 2','CIV 125','CIV 124'),						
('structure 3','CIV 126','CIV 125'),						
('structure 4','CIV 127','CIV 126'),						
('structure 5','CIV 128','CIV 127'),						
('Reinforced Concrete ','CIV 213','CIV 128'),						
('Reinforced Concrete 2','CIV 214','CIV 213'),						
('Reinforced Concrete 3','CIV 215','CIV 214'),						
('Reinforced Concrete 4','CIV 216','CIV 215'),						
('Reinforced Concrete 5','CIV 217','CIV 216');						


INSERT INTO department( dno,dname)
VALUES
('1','Civil Engineering '),		
('2','Computer science');		
						




