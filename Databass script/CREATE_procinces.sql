CREATE TABLE geographies (
  id int NOT NULL PRIMARY KEY,
  name varchar(255)   NOT NULL
);
CREATE TABLE provinces (
  id int NOT NULL PRIMARY KEY,
  code varchar(2)   NOT NULL,
  name_th varchar(150)   NOT NULL,
  name_en varchar(150)   NOT NULL,
  geography_id int NOT NULL REFERENCES geographies(id)
);
CREATE TABLE amphures (
  id int NOT NULL PRIMARY KEY,
  code varchar(4)  NOT NULL,
  name_th varchar(150)  NOT NULL,
  name_en varchar(150)   NOT NULL,
  province_id int NOT NULL REFERENCES provinces(id)
);
CREATE TABLE districts(
  id varchar(6) NOT NULL,
  zip_code int NOT NULL,
  name_th varchar(150)  NOT NULL,
  name_en varchar(150)  NOT NULL,
  amphure_id int NOT NULL REFERENCES amphures(id)
);
