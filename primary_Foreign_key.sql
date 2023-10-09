use hitesh;

create table CLIENT_MASTER1(
    clientNO varchar(6) primary key,
    Name varchar(20) not null,
    ADDRESS1 varchar(20),
    ADDRESS2 varchar(20),
    city varchar(20),
    PinCode int(8),
    State varchar(15),
    baldue int(15)


);

select * from client_master1;

insert into CLIENT_MASTER1(

    clientNO,Name,ADDRESS1,ADDRESS2,city,PinCode,State,baldue
) values(
    "C00001","Hitesh","Bhavnagar","TaLAJA","Bhavnagar","395008","Gujarat",150000
);

insert into CLIENT_MASTER1 (

    clientNO,Name,ADDRESS1,ADDRESS2,city,PinCode,State,baldue
)values(
    "C00002","Mamta Muzmudar","A-104","worli","Mumbai",400002,"Maharashtra",12000

);

insert into CLIENT_MASTER1 values(

 "C00003","Chhaya Bankar","B-104","Nariman","Mumbai",400001,"Maharashtra",14000
 );

insert into CLIENT_MASTER1 values(

    "C00004","Ashwini joshi","C-104","Bandra","Bangalore",560001,"Karnataka",5000
),(
    "C00005","Deepak Sharma","D-104","Kapodra","Mangalore",560050,"Karnataka",0
),(
    "C00006","Hansel Colaco","E-104","Hirabaugh","Mumbai",400060,"Maharashtra",2000
);

desc client_master1;


create table PRODUCT_MASTER1(

    PRODUCTNO varchar(6) primary key ,
    DESCRIPTION varchar(15) not null,
    PROFITPERCENT INT(2) not null,
    UNITMEASURE varchar(10) not null,
    QTYONHAND INT(8) not null,
    RECORDERLVL INT(8) not null ,
    SELLPRICE INT(8) not null ,
    COSTPRICE INT(8) not null 
);

select * from product_master1;

desc product_master1;

INSERT INTO PRODUCT_MASTER1 values(

"P00001","T-SHIRTS",5,"PIECE",200,50,350,250),
("P0345","SHIRTS",6,"PIECE",150,50,500,350),
("P06734","COTTON JEANS",5,"PIECE",100,20,600,450),
("P07865","JEANS",5,"PIECE",100,20,750,500),
("P07868","TROUSERS",2,"PIECE",150,50,850,550),
("P07885","PULL OVERS",2.5,"PIECE",80,30,700,450),
("P07965","DENIM SHIRTS",4,"PIECE",100,40,350,250),
("07975","LYCRA TOPS",5,"PIECE",70,30,300,175),
("P08865","SKIRTS",5,"PIECE",75,30,450,300);

CREATE TABLE SALESMAN_MASTER1
                             (SALESMANNO varchar (6) primary key,
                             SALESMANNAME varchar(20) not null,
                             ADDRESS1 varchar(15) not null,
                             ADDRESS2 varchar(15),
                             CITY VARCHAR (15),
                             PINCODE bigINT(10),
                             STATE VARCHAR(15),
                             SALAMT bigINT(15) not null,
                             TGTTOGET bigINT(15) not null ,
                             YTDSALES bigINT(15) not null,
                             REMARKS VARCHAR(20)
                             ) ;

insert into SALESMAN_MASTER1 values(
 "S00001","AMAN","A/14","WORLI","MUMBAI",400002,"MHARASHTRA",3000,100,50,"GOOD"),
 ("S00002","OMINSERT INTO KAR","65","NARIMAN","MUMBAI",400001,"MAHARASHTRA",3000,200,100,"GOOD"),
 ("S00003","RAJ","P-7","BANDRA","MUMBAI",400032,"MAHARASHTRA",3000,200,100,"GOOD"),
 ("S00004","ASHISH","A-5","JUHU","MUMBAI",400044,"MAHARASHTRA",3500,200,150,"GOOD");
 
select * from salesman_master1;

create table sales_order(
          orderno varchar(6) primary key,
          clientno varchar(6),
          orderdate date,
          delyaddr varchar(25),
          salesmanno varchar(6),
          delytype char(1),
          billyn char (1),
          delydate date ,
          orderstatus varchar(10),
          
          foreign key (clientno) references client_master1 (clientno),
          foreign key(salesmanno) references salesman_master1 (salesmanno) 
          
          );
 desc sales_order ;

insert into sales_order( orderno , clientno ,orderdate , salesmanno , delytype, billyn ,delydate , orderstatus)
values("O19001","C00001","12-6-04","S00001","F", "N", "20-07-02","In Process");

insert into sales_order( orderno , clientno ,orderdate , salesmanno , delytype, billyn ,delydate , orderstatus)
values ("O19002","C00002","25-06-04","S00002","P","N","27-06-02","Cancelled");

insert into sales_order( orderno , clientno ,orderdate , salesmanno , delytype, billyn ,delydate , orderstatus)
values ("O46865","C00003","18-02-04","S00003","F","Y","20-02-02","Fulfilled");

insert into sales_order( orderno , clientno ,orderdate , salesmanno , delytype, billyn ,delydate , orderstatus)
values ("O19003","C00001","03-05-04","S00001","F","Y","07-04-02","Fulfilled");

insert into sales_order( orderno , clientno ,orderdate , salesmanno , delytype, billyn ,delydate , orderstatus)
values ("O46866","C00004","20-05-04","S00002","P","N","22-05-04","Cancelled");

insert into sales_order( orderno , clientno ,orderdate , salesmanno , delytype, billyn ,delydate , orderstatus)
values ("O19008","C00005","24-05-04","S00004","F","N","26-07-02","In Process");

drop table sales_order_details;

create table sales_order_details(
        ORDERNO varchar(6) ,
        PRODUCTNO varchar(6),
        QTYORDERED bigint(8),
        QTYDISP bigint(8),
        PRODUCTRATE bigint(10),
        
         foreign key (orderno) references sales_order(orderno),
         foreign key (productno) references product_master1 (productno));
         
        insert into sales_order_details values(
        "O19001","P00001",4,4,525),
        ("O19001","P07965",2,1,8400),
        ("O19001","P07885",2,1,5250),
        ("O19002","P00001",10,0,525),
        ("O46865","PU7868",3,3,3150),
        ("O46865","P07885",3,1,5250),
        ("O46865","P00001",10,10,525),
        ("O46865","P0345",4,4,1050),
        ("O19003","P03453",2,2,1050),
        ("O19003","P06734",1,1,12000),
        ("O46866","P07965",1,0,8400),
        ("O46866","P07975",1,0,1050),
        ("O19008","P00001",10,5,525),
        ("O19008","P07975",5,3,1050);
        
        insert into sales_order_details( ORDERNO ,PRODUCTNO ,QTYORDERED ,QTYDISP ,PRODUCTRATE ) values("O19001","P00001",4,4,525);
        insert into sales_order_details( ORDERNO ,PRODUCTNO ,QTYORDERED ,QTYDISP ,PRODUCTRATE ) values ("O19001","P07965",2,1,8400);
        insert into sales_order_details( ORDERNO ,PRODUCTNO ,QTYORDERED ,QTYDISP ,PRODUCTRATE ) values ("O19001","P07885",2,1,5250);
         insert into sales_order_details( ORDERNO ,PRODUCTNO ,QTYORDERED ,QTYDISP ,PRODUCTRATE ) values ("O19002","P00001",10,0,525);
         insert into sales_order_details( ORDERNO ,PRODUCTNO ,QTYORDERED ,QTYDISP ,PRODUCTRATE ) values("O46865","PU7868",3,3,3150);
         insert into sales_order_details( ORDERNO ,PRODUCTNO ,QTYORDERED ,QTYDISP ,PRODUCTRATE ) values("O46865","P07885",3,1,5250);
         insert into sales_order_details( ORDERNO ,PRODUCTNO ,QTYORDERED ,QTYDISP ,PRODUCTRATE ) values ("O46865","P00001",10,10,525);
         insert into sales_order_details( ORDERNO ,PRODUCTNO ,QTYORDERED ,QTYDISP ,PRODUCTRATE ) values("O46865","P0345",4,4,1050);
         insert into sales_order_details( ORDERNO ,PRODUCTNO ,QTYORDERED ,QTYDISP ,PRODUCTRATE ) values ("O19003","P06734",1,1,12000);
         insert into sales_order_details( ORDERNO ,PRODUCTNO ,QTYORDERED ,QTYDISP ,PRODUCTRATE ) values  ("O46866","P07965",1,0,8400);
	     insert into sales_order_details( ORDERNO ,PRODUCTNO ,QTYORDERED ,QTYDISP ,PRODUCTRATE ) values("O46866","P07975",1,0,1050);
	    insert into sales_order_details( ORDERNO ,PRODUCTNO ,QTYORDERED ,QTYDISP ,PRODUCTRATE ) values  ("O19008","P00001",10,5,525);
		insert into sales_order_details( ORDERNO ,PRODUCTNO ,QTYORDERED ,QTYDISP ,PRODUCTRATE ) values ("O19008","P07975",5,3,1050);
				
        
        select * from sales_order_details;
         
        
        
        
        








