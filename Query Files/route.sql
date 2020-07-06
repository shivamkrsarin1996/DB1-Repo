--------------------------------------------------------
--  File created - Sunday-July-05-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ROUTE
--------------------------------------------------------

  CREATE TABLE "SXS1987"."ROUTE" 
   (	"ROUTE_NO" NUMBER(3,0), 
	"SOURCE_STATION_CODE" VARCHAR2(4 BYTE), 
	"DEST_STATION_CODE" VARCHAR2(4 BYTE), 
	"DISTANCE" VARCHAR2(4 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into SXS1987.ROUTE
SET DEFINE OFF;
Insert into SXS1987.ROUTE (ROUTE_NO,SOURCE_STATION_CODE,DEST_STATION_CODE,DISTANCE) values (111,'PNQ','MUM','180');
Insert into SXS1987.ROUTE (ROUTE_NO,SOURCE_STATION_CODE,DEST_STATION_CODE,DISTANCE) values (112,'MUM','PNQ','180');
Insert into SXS1987.ROUTE (ROUTE_NO,SOURCE_STATION_CODE,DEST_STATION_CODE,DISTANCE) values (113,'PNQ','NAG','450');
Insert into SXS1987.ROUTE (ROUTE_NO,SOURCE_STATION_CODE,DEST_STATION_CODE,DISTANCE) values (114,'NAG','PNQ','450');
Insert into SXS1987.ROUTE (ROUTE_NO,SOURCE_STATION_CODE,DEST_STATION_CODE,DISTANCE) values (115,'PNQ','HYD','800');
Insert into SXS1987.ROUTE (ROUTE_NO,SOURCE_STATION_CODE,DEST_STATION_CODE,DISTANCE) values (116,'HYD','PNQ','800');
Insert into SXS1987.ROUTE (ROUTE_NO,SOURCE_STATION_CODE,DEST_STATION_CODE,DISTANCE) values (117,'HYD','BAN','435');
Insert into SXS1987.ROUTE (ROUTE_NO,SOURCE_STATION_CODE,DEST_STATION_CODE,DISTANCE) values (118,'BAN','HYD','435');
Insert into SXS1987.ROUTE (ROUTE_NO,SOURCE_STATION_CODE,DEST_STATION_CODE,DISTANCE) values (119,'NDL','MUM','1250');
Insert into SXS1987.ROUTE (ROUTE_NO,SOURCE_STATION_CODE,DEST_STATION_CODE,DISTANCE) values (120,'MUM','NDL','1250');
Insert into SXS1987.ROUTE (ROUTE_NO,SOURCE_STATION_CODE,DEST_STATION_CODE,DISTANCE) values (121,'MUM','BPL','900');
Insert into SXS1987.ROUTE (ROUTE_NO,SOURCE_STATION_CODE,DEST_STATION_CODE,DISTANCE) values (122,'BPL','MUM','900');
Insert into SXS1987.ROUTE (ROUTE_NO,SOURCE_STATION_CODE,DEST_STATION_CODE,DISTANCE) values (123,'BPL','SUR','630');
Insert into SXS1987.ROUTE (ROUTE_NO,SOURCE_STATION_CODE,DEST_STATION_CODE,DISTANCE) values (124,'SUR','BPL','630');
Insert into SXS1987.ROUTE (ROUTE_NO,SOURCE_STATION_CODE,DEST_STATION_CODE,DISTANCE) values (125,'NDL','SUR','725');
Insert into SXS1987.ROUTE (ROUTE_NO,SOURCE_STATION_CODE,DEST_STATION_CODE,DISTANCE) values (126,'SUR','NDL','725');
Insert into SXS1987.ROUTE (ROUTE_NO,SOURCE_STATION_CODE,DEST_STATION_CODE,DISTANCE) values (127,'SUR','JAI','350');
Insert into SXS1987.ROUTE (ROUTE_NO,SOURCE_STATION_CODE,DEST_STATION_CODE,DISTANCE) values (128,'JAI','SUR','350');
Insert into SXS1987.ROUTE (ROUTE_NO,SOURCE_STATION_CODE,DEST_STATION_CODE,DISTANCE) values (129,'NDL','JAI','280');
Insert into SXS1987.ROUTE (ROUTE_NO,SOURCE_STATION_CODE,DEST_STATION_CODE,DISTANCE) values (130,'JAI','NDL','280');
Insert into SXS1987.ROUTE (ROUTE_NO,SOURCE_STATION_CODE,DEST_STATION_CODE,DISTANCE) values (131,'NDL','CAL','985');
Insert into SXS1987.ROUTE (ROUTE_NO,SOURCE_STATION_CODE,DEST_STATION_CODE,DISTANCE) values (132,'CAL','NDL','985');
Insert into SXS1987.ROUTE (ROUTE_NO,SOURCE_STATION_CODE,DEST_STATION_CODE,DISTANCE) values (133,'CAL','BAN','925');
Insert into SXS1987.ROUTE (ROUTE_NO,SOURCE_STATION_CODE,DEST_STATION_CODE,DISTANCE) values (134,'BAN','CAL','925');
Insert into SXS1987.ROUTE (ROUTE_NO,SOURCE_STATION_CODE,DEST_STATION_CODE,DISTANCE) values (135,'NDL','BAN','1400');
Insert into SXS1987.ROUTE (ROUTE_NO,SOURCE_STATION_CODE,DEST_STATION_CODE,DISTANCE) values (136,'BAN','NDL','1400');
--------------------------------------------------------
--  DDL for Index ROUTE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SXS1987"."ROUTE_PK" ON "SXS1987"."ROUTE" ("ROUTE_NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table ROUTE
--------------------------------------------------------

  ALTER TABLE "SXS1987"."ROUTE" ADD CONSTRAINT "ROUTE_PK" PRIMARY KEY ("ROUTE_NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SXS1987"."ROUTE" MODIFY ("ROUTE_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table ROUTE
--------------------------------------------------------

  ALTER TABLE "SXS1987"."ROUTE" ADD CONSTRAINT "ROUTE_FK1" FOREIGN KEY ("SOURCE_STATION_CODE")
	  REFERENCES "SXS1987"."STATION" ("STATION_CODE") DISABLE;
  ALTER TABLE "SXS1987"."ROUTE" ADD CONSTRAINT "ROUTE_FK2" FOREIGN KEY ("DEST_STATION_CODE")
	  REFERENCES "SXS1987"."STATION" ("STATION_CODE") DISABLE;
