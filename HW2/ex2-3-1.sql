CREATE TABLE product (maker VARCHAR(20), model VARCHAR(20), type VARCHAR(8));

CREATE TABLE pc (model VARCHAR(20), speed FLOAT(4), ram INT(8), hd INT(8), price INT(4));

CREATE TABLE laptop (model VARCHAR(20), speed FLOAT(4), ram INT(8), hd INT(8), screen VARCHAR(20), price INT(4));

CREATE TABLE printer (model VARCHAR(20), color VARCHAR(20), type VARCHAR(8), price INT(4));

ALTER TABLE printer DROP COLUMN color;

ALTER TABLE laptop ADD od VARCHAR(20) DEFAULT 'none';
