-- \sql
-- \connect root@localhost:3306

-- use Hitesh

USE HITESH;

create table PRODUCT_MASTER(

    PRODUCTNO varchar(6),
    DESCRIPTION varchar(15),
    PROFITPERCENT INT(2),
    UNITMEASURE varchar(10),
    QTYONHAND INT(8),
    RECORDERLVL INT(8),
    SELLPRICE INT(8),
    COSTPRICE INT(8)
);

INSERT INTO PRODUCT_MASTER VALUES(

"P00001","T-SHIRTS",5,"PIECE",200,50,350,250),
("P0345","SHIRTS",6,"PIECE",150,50,500,350),
("P06734","COTTON JEANS",5,"PIECE",100,20,600,450),
("P07865","JEANS",5,"PIECE",100,20,750,500),
("P07868","TROUSERS",2,"PIECE",150,50,850,550),
("P07885","PULL OVERS",2.5,"PIECE",80,30,700,450),
("P07965","DENIM SHIRTS",4,"PIECE",100,40,350,250),
("07975","LYCRA TOPS",5,"PIECE",70,30,300,175),
("P08865","SKIRTS",5,"PIECE",75,30,450,300);

SELECT * FROM PRODUCT_MASTER;

-- +-----------+--------------+---------------+-------------+-----------+-------------+-----------+-----------+
-- | PRODUCTNO | DESCRIPTION  | PROFITPERCENT | UNITMEASURE | QTYONHAND | RECORDERLVL | SELLPRICE | COSTPRICE |
-- +-----------+--------------+---------------+-------------+-----------+-------------+-----------+-----------+
-- | P00001    | T-SHIRTS     |             5 | PIECE       |       200 |          50 |       350 |       250 |
-- | P0345     | SHIRTS       |             6 | PIECE       |       150 |          50 |       500 |       350 |
-- | P06734    | COTTON JEANS |             5 | PIECE       |       100 |          20 |       600 |       450 |
-- | P07865    | JEANS        |             5 | PIECE       |       100 |          20 |       750 |       500 |
-- | P07868    | TROUSERS     |             2 | PIECE       |       150 |          50 |       850 |       550 |
-- | P07885    | PULL OVERS   |             3 | PIECE       |        80 |          30 |       700 |       450 |
-- | P07965    | DENIM SHIRTS |             4 | PIECE       |       100 |          40 |       350 |       250 |
-- | 07975     | LYCRA TOPS   |             5 | PIECE       |        70 |          30 |       300 |       175 |
-- | P08865    | SKIRTS       |             5 | PIECE       |        75 |          30 |       450 |       300 |
-- +-----------+--------------+---------------+-------------+-----------+-------------+-----------+-----------+

