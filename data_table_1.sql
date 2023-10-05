\sql
connect root@localhost:3306

create databases;

use database hitesh

 create table CLIENT_MASTER(
    clientNO varchar(6),
    Name varchar(20),
    ADDRESS1 varchar(20),
    ADDRESS2 varchar(20),
    city varchar(20),
    PinCode int(8),
    State varchar(15),
    baldue int(15)


);

insert into CLIENT_MASTER(

    clientNO,Name,ADDRESS1,ADDRESS2,city,PinCode,State,baldue
) values(
    "C00001","Hitesh","Bhavnagar","TaLAJA","Bhavnagar","395008","Gujarat",150000
)

insert into CLIENT_MASTER values(

    clientNO,Name,ADDRESS1,ADDRESS2,city,PinCode,State,baldue
)values(
    "C00002","Mamta Muzmudar","A-104","worli","Mumbai",400002,"Maharashtra",12000
);

insert into CLIENT_MASTER(

 "C00003","Chhaya Bankar","B-104","Nariman","Mumbai",400001,"Maharashtra",14000

)

insert into CLIENT_MASTER values(

    "C00004","Ashwini joshi","C-104","Bandra","Bangalore",560001,"Karnataka",5000
),(
    "C00005","Deepak Sharma","D-104","Kapodra","Mangalore",560050,"Karnataka",0
),(
    "C00006","Hansel Colaco","E-104","Hirabaugh","Mumbai",400060,"Maharashtra",2000
)

update CLIENT_MASTER set Name="Tony Stark" where clientNO = "C00006";

update CLIENT_MASTER set city = "Bobmay" where clientNO= "C00006";

update CLIENT_MASTER set name = "Steve Rogers" where clientNO ="C00001";

update CLIENT_MASTER set ADDRESS1 ="Washington", ADDRESS2 =" DC" where clientNO = "C00001";

update CLIENT_MASTER set city = "Wasington " where clientNO="C00001";

delete from CLIENT_MASTER where clientNO="C00006";

insert into CLIENT_MASTER values (
    "C00006","Tony Stark","E-104","Borivali","Bombay",40060,"Maharashtra",1200);

update CLIENT_MASTER set PinCode = 400060 where clientNO = "C00006";


-- ----------+---------------+------------+----------+------------+---------+-------------+--------+
-- | clientNO | Name          | ADDRESS1   | ADDRESS2 | city       | PinCode | State       | baldue |
-- +----------+---------------+------------+----------+------------+---------+-------------+--------+
-- | C00001   | Steve Rogers  | Washington |  DC      | Wasington  |  395008 | Gujarat     | 150000 |
-- | C00002   | Iron man      | A-104      | worli    | Mumbai     |  400002 | Maharashtra |  12000 |
-- | C00003   | Iron man      | B-104      | Nariman  | Mumbai     |  400001 | Maharashtra |  14000 |
-- | C00004   | Ashwini joshi | C-104      | Bandra   | Bangalore  |  560001 | Karnataka   |   5000 |
-- | C00005   | Deepak Sharma | D-104      | Kapodra  | Mangalore  |  560050 | Karnataka   |      0 |
-- | C00006   | Tony Stark    | E-104      | Borivali | Bombay     |  400060 | Maharashtra |   1200 |
-- +----------+---------------+------------+----------+------------+---------+-------------+--------+

update CLIENT_MASTER set name ="Dead pool" where clientNO = "c00003";

update CLIENT_MASTER set name = "Spider Man" where clientNO = "C00004";