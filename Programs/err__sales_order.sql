CREATE TABLE sales_order 
	   (	"ORDERNO" VARCHAR2(6) CONSTRAINTS ORKEY PRIMARY KEY CHECK(ORDERNO LIKE '0%'), 
		"CLIENTNO" VARCHAR2(6) CONSTRAINTS CLIKEY REFERENCES CLIENT_MASTER(CLIENTNO),
		"ORDERDATE" DATE NOT NULL, 
		"DELYADDR" VARCHAR2(25), 
		"SALESMANNO" VARCHAR2(6) CONSTRAINTS SALKEY REFERENCES SALESMAN_MASTER(SALESMANNO), 
		"DELYTYPE" CHAR(1)  CONSTRAINTS DTKEY CHECK(DELYTYPE IN('P','F')), 
		"BILLYN" CHAR(1), 
		"DELYDATE" DATE,
		"ORDERSTATUS" VARCHAR2(10) CONSTRAINTS OSKEY  CHECK(ORDERSTATUS IN('In Process','Fulfilled','BackOrder','Cancelled'))
	   );


       //------------------------------------------------------------------------------------------
        Insert into sales_order values('ORDERNO','C00001','12-JUN-04','S00001',null,'F','N','20-JUL-02','IN PROCESS');
rt into sales_order values('ORDERNO','C00001','12-JUN-04','S00001',null,'F','N','20-JUL-02','IN PROCESS')
                           *
R at line 1:
12899: value too large for column "SYSTEM"."SALES_ORDER"."ORDERNO" (actual:
aximum: 6)


 Insert into sales_order values('ORDERNO','C00001','12-JUN-04','S00001',null,'F','N','20-JUL-02','IN PROCESS');
rt into sales_order values('ORDERNO','C00001','12-JUN-04','S00001',null,'F','N','20-JUL-02','IN PROCESS')
                           *
R at line 1:
12899: value too large for column "SYSTEM"."SALES_ORDER"."ORDERNO" (actual:
aximum: 6)


 insert into sales_order values(&orderno,&clientno,&orderdate,&delyaddr,&salesmanno,&delytype,&billyn,&delydate,&orderstatus);
r value for orderno: 'O19001'
r value for clientno: 'C00001'
r value for orderdate: '12-JUNE-04'
r value for delyaddr: NULL
r value for salesmanno: 'S00001'
r value for delytype: 'F'
r value for billyn: 'N'
r value for delydate: '20-JULY-02'
r value for orderstatus: 'IN PROCESS'
  1: insert into sales_order values(&orderno,&clientno,&orderdate,&delyaddr,&salesmanno,&delytype,&billyn,&delydate,&orderstatus)
  1: insert into sales_order values('O19001','C00001','12-JUNE-04',NULL,'S00001','F','N','20-JULY-02','IN PROCESS')
rt into sales_order values('O19001','C00001','12-JUNE-04',NULL,'S00001','F','N','20-JULY-02','IN PROCESS')

R at line 1:
02290: check constraint (SYSTEM.OSKEY) violated


 Insert into sales_order values('O19001','C00001','12-JUNE-04',NULL,'S00001','F','N','20-JULY-02','In Process');
rt into sales_order values('O19001','C00001','12-JUNE-04',NULL,'S00001','F','N','20-JULY-02','In Process')

R at line 1:
02290: check constraint (SYSTEM.DDKEY) violated


 Insert into sales_order
 values('O19001','C00001','12-JUNE-04',NULL,'S00001','F','N','20-JULY-04','In Process');
rt into sales_order

R at line 1:
02290: check constraint (SYSTEM.DDKEY) violated


 Insert into sales_order values('O19001','C00001','12-JUNE-04',NULL,'S00001','F','N','20-JULY-04','In Process');
rt into sales_order values('O19001','C00001','12-JUNE-04',NULL,'S00001','F','N','20-JULY-04','In Process')

R at line 1:
02290: check constraint (SYSTEM.DDKEY) violated


 Insert into sales_order values('O19001','C00001','12-JUN-04',NULL,'S00001','F','N','20-JUL-05','In Process');
rt into sales_order values('O19001','C00001','12-JUN-04',NULL,'S00001','F','N','20-JUL-05','In Process')

R at line 1:
02290: check constraint (SYSTEM.DDKEY) violated


 Insert into sales_order values('O19001','C00001','12-JUN-04',NULL,'S00001','F','N','20-JUL-02','In Process');
rt into sales_order values('O19001','C00001','12-JUN-04',NULL,'S00001','F','N','20-JUL-02','In Process')

R at line 1:
02290: check constraint (SYSTEM.DDKEY) violated


 Insert into sales_order values('O19001','C00001','12-JUNE-04',NULL,'S00001','F','N','20-JULY-02','In Process');
rt into sales_order values('O19001','C00001','12-JUNE-04',NULL,'S00001','F','N','20-JULY-02','In Process')

R at line 1:
02290: check constraint (SYSTEM.DDKEY) violated


 insert into sales_order values(&orderno,&clientno,&orderdate,&delyaddr,&salesmanno,&delytype,&billyn,&delydate,&orderstatus);
r value for orderno: O19001
r value for clientno: C00001
r value for orderdate: 12-JUN-04
r value for delyaddr: NULL
r value for salesmanno: S00001
r value for delytype: F
r value for billyn: N
r value for delydate: 20-JUL-02
r value for orderstatus: In Process
  1: insert into sales_order values(&orderno,&clientno,&orderdate,&delyaddr,&salesmanno,&delytype,&billyn,&delydate,&orderstatus)
  1: insert into sales_order values(O19001,C00001,12-JUN-04,NULL,S00001,F,N,20-JUL-02,In Process)
rt into sales_order values(O19001,C00001,12-JUN-04,NULL,S00001,F,N,20-JUL-02,In Process)
                                                                             *
R at line 1:
00936: missing expression


 insert into sales_order values('&orderno','&clientno',&orderdate,'&delyaddr','&salesmanno','&delytype','&billyn',&delydate,'&orderstatus');
r value for orderno: O19001
r value for clientno: C00001
r value for orderdate: 12-JUN-04
r value for delyaddr: NULL
r value for salesmanno: S00001
r value for delytype: F
r value for billyn: N
r value for delydate: 20-JUL-02
r value for orderstatus: In Process
  1: insert into sales_order values('&orderno','&clientno',&orderdate,'&delyaddr','&salesmanno','&delytype','&billyn',&delydate,'&orderstatus')
  1: insert into sales_order values('O19001','C00001',12-JUN-04,'NULL','S00001','F','N',20-JUL-02,'In Process')
rt into sales_order values('O19001','C00001',12-JUN-04,'NULL','S00001','F','N',20-JUL-02,'In Process')
                                                                                  *
R at line 1:
00984: column not allowed here


 ed
e file afiedt.buf

 insert into sales_order values('&orderno','&clientno','&orderdate','&delyaddr','&salesmanno','&delytype','&billyn','&delydate','&orderstatus')
 /
r value for orderno: O19001
r value for clientno: C00001
r value for orderdate: 12-JUN-04
r value for delyaddr: NULL
r value for salesmanno: S00001
r value for delytype: F
r value for billyn: N
r value for delydate: 20-JUL-02
r value for orderstatus: In Process
  1: insert into sales_order values('&orderno','&clientno','&orderdate','&delyaddr','&salesmanno','&delytype','&billyn','&delydate','&orderstatus')
  1: insert into sales_order values('O19001','C00001','12-JUN-04','NULL','S00001','F','N','20-JUL-02','In Process')
rt into sales_order values('O19001','C00001','12-JUN-04','NULL','S00001','F','N','20-JUL-02','In Process')

R at line 1:
02290: check constraint (SYSTEM.DDKEY) violated


 desc sales_order;
e                                      Null?    Type
-------------------------------------- -------- ----------------------------
ERNO                                   NOT NULL VARCHAR2(6)
ENTNO                                           VARCHAR2(6)
ERDATE                                 NOT NULL DATE
YADDR                                           VARCHAR2(25)
ESMANNO                                         VARCHAR2(6)
YTYPE                                           CHAR(1)
LYN                                             CHAR(1)
YDATE                                           DATE
ERSTATUS                                        VARCHAR2(10)

 Insert into sales_order (ORDERNO,CLIENTNO,ORDERDATE,DELYADDR,SALESMANNO,DELYTYPE,BILLYN,DELYDATE,ORDERSTATUS) values('O19001','C00001','12-JUN-04',NULL,'S00001','F
Process');
rt into sales_order (ORDERNO,CLIENTNO,ORDERDATE,DELYADDR,SALESMANNO,DELYTYPE,BILLYN,DELYDATE,ORDERSTATUS) values('O19001','C00001','12-JUN-04',NULL,'S00001','F','N'
ss')

R at line 1:
02290: check constraint (SYSTEM.DDKEY) violated


 Insert into sales_order (ORDERNO,CLIENTNO,ORDERDATE,DELYADDR,SALESMANNO,DELYTYPE,BILLYN,DELYDATE,ORDERSTATUS) values('O19001','C00001','12-JUN-04',NULL,'S00001','F
Process');
rt into sales_order (ORDERNO,CLIENTNO,ORDERDATE,DELYADDR,SALESMANNO,DELYTYPE,BILLYN,DELYDATE,ORDERSTATUS) values('O19001','C00001','12-JUN-04',NULL,'S00001','F','N'
ss')

R at line 1:
02290: check constraint (SYSTEM.DDKEY) violated


 INSERT INTO sales_order (ORDERNO, CLIENTNO, ORDERDATE, DELYADDR, SALESMANNO, DELYTYPE, BILLYN, DELYDATE, ORDERSTATUS)
 VALUES ('O19001', 'C00001', TO_DATE('12-JUN-2004', 'DD-MON-YYYY'), NULL, 'S00001', 'F', 'N', TO_DATE('20-JUL-2004', 'DD-MON-YYYY'), 'In Process');
RT INTO sales_order (ORDERNO, CLIENTNO, ORDERDATE, DELYADDR, SALESMANNO, DELYTYPE, BILLYN, DELYDATE, ORDERSTATUS)

R at line 1:
02290: check constraint (SYSTEM.DDKEY) violated


 INSERT INTO sales_order (ORDERNO, CLIENTNO, ORDERDATE, DELYADDR, SALESMANNO, DELYTYPE, BILLYN, DELYDATE, ORDERSTATUS)
 VALUES ('O19001', 'C00001', TO_DATE('12-JUN-2004', 'DD-MON-YYYY'), NULL, 'S00001', 'F', 'N', TO_DATE('20-JUL-2005', 'DD-MON-YYYY'), 'In Process');
RT INTO sales_order (ORDERNO, CLIENTNO, ORDERDATE, DELYADDR, SALESMANNO, DELYTYPE, BILLYN, DELYDATE, ORDERSTATUS)

R at line 1:
02290: check constraint (SYSTEM.DDKEY) violated


 INSERT INTO sales_order (ORDERNO, CLIENTNO, ORDERDATE, DELYADDR, SALESMANNO, DELYTYPE, BILLYN, DELYDATE, ORDERSTATUS)
 VALUES ('O19001', 'C00001', TO_DATE('12-JUN-2004', 'DD-MON-YYYY'), NULL, 'S00001', 'F', 'N', TO_DATE('20-JUN-2004', 'DD-MON-YYYY'), 'In Process');
RT INTO sales_order (ORDERNO, CLIENTNO, ORDERDATE, DELYADDR, SALESMANNO, DELYTYPE, BILLYN, DELYDATE, ORDERSTATUS)

R at line 1:
02290: check constraint (SYSTEM.DDKEY) violated


 INSERT INTO sales_order (ORDERNO, CLIENTNO, ORDERDATE, DELYADDR, SALESMANNO, DELYTYPE, BILLYN, DELYDATE, ORDERSTATUS)
 VALUES ('O19001', 'C00001', TO_DATE('12-JUN-2004', 'DD-MON-YYYY'), NULL, 'S00001', 'F', 'N', TO_DATE('20-JUN-2004', 'DD-MON-YYYY'), 'In Process');INSERT INTO sales
TNO, ORDERDATE, DELYADDR, SALESMANNO, DELYTYPE, BILLYN, DELYDATE, ORDERSTATUS)
 VALUES ('O19001', 'C00001', TO_DATE('12-JAN-2004', 'DD-MON-YYYY'), NULL, 'S00001', 'F', 'N', TO_DATE('20-MAY-2004', 'DD-MON-YYYY'), 'In Process');
ES ('O19001', 'C00001', TO_DATE('12-JUN-2004', 'DD-MON-YYYY'), NULL, 'S00001', 'F', 'N', TO_DATE('20-JUN-2004', 'DD-MON-YYYY'), 'In Process');INSERT INTO sales_orde
ORDERDATE, DELYADDR, SALESMANNO, DELYTYPE, BILLYN, DELYDATE, ORDERSTATUS)
                                                                                                                                             *
R at line 2:
00911: invalid character


 INSERT INTO sales_order (ORDERNO, CLIENTNO, ORDERDATE, DELYADDR, SALESMANNO, DELYTYPE, BILLYN, DELYDATE, ORDERSTATUS)
 VALUES ('O19001', 'C00001', TO_DATE('12-JAN-2004', 'DD-MON-YYYY'), NULL, 'S00001', 'F', 'N', TO_DATE('20-MAY-2004', 'DD-MON-YYYY'), 'In Process');
RT INTO sales_order (ORDERNO, CLIENTNO, ORDERDATE, DELYADDR, SALESMANNO, DELYTYPE, BILLYN, DELYDATE, ORDERSTATUS)

R at line 1:
02290: check constraint (SYSTEM.DDKEY) violated



 INSERT INTO sales_order (ORDERNO, CLIENTNO, ORDERDATE, DELYADDR, SALESMANNO, DELYTYPE, BILLYN, DELYDATE, ORDERSTATUS)
 VALUES ('O19001', 'C00001', TO_DATE('12-JAN-2004', 'DD-MON-YYYY'), NULL, 'S00001', 'F', 'N', TO_DATE('02-FEB-2002', 'DD-MON-YYYY'), 'In Process');
RT INTO sales_order (ORDERNO, CLIENTNO, ORDERDATE, DELYADDR, SALESMANNO, DELYTYPE, BILLYN, DELYDATE, ORDERSTATUS)

R at line 1:
02290: check constraint (SYSTEM.DDKEY) violated


 drop table sales_order;
 table sales_order
       *
R at line 1:
02449: unique/primary keys in table referenced by foreign keys


 drop table sales_order_details;

e dropped.

 drop table sales_order;

e dropped.

 CREATE TABLE sales_order
 (
     "ORDERNO" VARCHAR2(6) CONSTRAINT ORKEY PRIMARY KEY CHECK(ORDERNO LIKE '0%'),
     "CLIENTNO" VARCHAR2(6) CONSTRAINT CLIKEY REFERENCES CLIENT_MASTER(CLIENTNO),
     "ORDERDATE" DATE NOT NULL,
     "DELYADDR" VARCHAR2(25),
     "SALESMANNO" VARCHAR2(6) CONSTRAINT SALKEY REFERENCES SALESMAN_MASTER(SALESMANNO),
     "DELYTYPE" CHAR(1) CONSTRAINT DTKEY CHECK(DELYTYPE IN('P','F')),
     "BILLYN" CHAR(1),
     "DELYDATE" DATE CONSTRAINT DDKEY CHECK(ORDERDATE < DELYDATE),
     "ORDERSTATUS" VARCHAR2(10) CONSTRAINT OSKEY CHECK(ORDERSTATUS IN('In Process','Fulfilled','BackOrder','Cancelled'))
 );
"DELYDATE" DATE CONSTRAINT DDKEY CHECK(ORDERDATE < DELYDATE),
                                                            *
R at line 10:
02438: Column check constraint cannot reference other columns


 CREATE TABLE sales_order
       (    "ORDERNO" VARCHAR2(6) CONSTRAINTS ORKEY PRIMARY KEY CHECK(ORDERNO LIKE '0%'),
            "CLIENTNO" VARCHAR2(6) CONSTRAINTS CLIKEY REFERENCES CLIENT_MASTER(CLIENTNO),
            "ORDERDATE" DATE NOT NULL,
            "DELYADDR" VARCHAR2(25),
            "SALESMANNO" VARCHAR2(6) CONSTRAINTS SALKEY REFERENCES SALESMAN_MASTER(SALESMANNO),
            "DELYTYPE" CHAR(1)  CONSTRAINTS DTKEY CHECK(DELYTYPE IN('P','F')),
            "BILLYN" CHAR(1),
            "DELYDATE" DATE CONSTRAINTS DDKEY CHECK('ORDERDATE' < 'DELYDATE'),
            "ORDERSTATUS" VARCHAR2(10) CONSTRAINTS OSKEY  CHECK(ORDERSTATUS IN('In Process','Fulfilled','BackOrder','Cancelled'))
       );

e created.

 INSERT INTO sales_order (ORDERNO, CLIENTNO, ORDERDATE, DELYADDR, SALESMANNO, DELYTYPE, BILLYN, DELYDATE, ORDERSTATUS)
 VALUES ('O19001', 'C00001', TO_DATE('12-JUN-2004', 'DD-MON-YYYY'), NULL, 'S00001', 'F', 'N', TO_DATE('20-JUL-2005', 'DD-MON-YYYY'), 'In Process');
RT INTO sales_order (ORDERNO, CLIENTNO, ORDERDATE, DELYADDR, SALESMANNO, DELYTYPE, BILLYN, DELYDATE, ORDERSTATUS)

R at line 1:
02290: check constraint (SYSTEM.DDKEY) violated


 drop table sales_order;

e dropped.

 CREATE TABLE sales_order
       (    "ORDERNO" VARCHAR2(6) CONSTRAINTS ORKEY PRIMARY KEY CHECK(ORDERNO LIKE '0%'),
            "CLIENTNO" VARCHAR2(6) CONSTRAINTS CLIKEY REFERENCES CLIENT_MASTER(CLIENTNO),
            "ORDERDATE" DATE NOT NULL,
            "DELYADDR" VARCHAR2(25),
            "SALESMANNO" VARCHAR2(6) CONSTRAINTS SALKEY REFERENCES SALESMAN_MASTER(SALESMANNO),
            "DELYTYPE" CHAR(1)  CONSTRAINTS DTKEY CHECK(DELYTYPE IN('P','F')),
            "BILLYN" CHAR(1),
            "DELYDATE" DATE,
            "ORDERSTATUS" VARCHAR2(10) CONSTRAINTS OSKEY  CHECK(ORDERSTATUS IN('In Process','Fulfilled','BackOrder','Cancelled'))
       );

e created.

 INSERT INTO sales_order (ORDERNO, CLIENTNO, ORDERDATE, DELYADDR, SALESMANNO, DELYTYPE, BILLYN, DELYDATE, ORDERSTATUS)
 VALUES ('O19001', 'C00001', TO_DATE('12-JUN-2004', 'DD-MON-YYYY'), NULL, 'S00001', 'F', 'N', TO_DATE('20-JUL-2005', 'DD-MON-YYYY'), 'In Process');
RT INTO sales_order (ORDERNO, CLIENTNO, ORDERDATE, DELYADDR, SALESMANNO, DELYTYPE, BILLYN, DELYDATE, ORDERSTATUS)

R at line 1:
02290: check constraint (SYSTEM.SYS_C009475) violated


 /