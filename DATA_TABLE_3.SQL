USE HITESH ;



CREATE TABLE SALESMAN_MASTER(SALESMANNO varchar (6),
                             SALESMANNAME varchar(20),
                             ADDRESS1 varchar(15),
                             ADDRESS2 varchar(15),
                             CITY VARCHAR (15),
                             PINCODE int(10),
                             STATE VARCHAR(15),
                             SALAMT INT(15),
                             TGTTOGET int(15),
                             YTDSALES INT(15),
                             REMARKS VARCHAR(20)
                             ) ;




INSERT INTO SALESMAN_MASTER values(
 "S00001","AMAN","A/14","WORLI","MUMBAI",400002,"MHARASHTRA",3000,100,50,"GOOD"),
 ("S00002","OMKAR","65","NARIMAN","MUMBAI",400001,"MAHARASHTRA",3000,200,100,"GOOD"),
 ("S00003","RAJ","P-7","BANDRA","MUMBAI",400032,"MAHARASHTRA",3000,200,100,"GOOD"),
 ("S00004","ASHISH","A-5","JUHU","MUMBAI",400044,"MAHARASHTRA",3500,200,150,"GOOD");
 
 select * FROM SALESMAN_MASTER ; 

                             


