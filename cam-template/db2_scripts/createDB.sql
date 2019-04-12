CREATE DATABASE TRADER
;
CONNECT TO TRADER
;

DROP TABLE Portfolio
;

CREATE TABLE Portfolio
(
  owner   VARCHAR(32) NOT NULL, 
  total   DOUBLE, 
  loyalty VARCHAR(8), 
  PRIMARY KEY(owner)
)
;

DROP TABLE Stock
;

CREATE TABLE Stock
(
owner      VARCHAR(32) NOT NULL, 
symbol     VARCHAR(8) NOT NULL, 
shares     INTEGER, 
price      DOUBLE, 
total      DOUBLE, 
dateQuoted DATE, 
FOREIGN KEY (owner) 
REFERENCES Portfolio(owner) 
ON DELETE CASCADE, 
PRIMARY KEY(owner, symbol)
)
;

CONNECT RESET
;

