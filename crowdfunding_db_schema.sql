DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS campaign;

CREATE TABLE category (
  category_id varchar(30)  NOT NULL,
  category Varchar(50) NOT NULL,
  PRIMARY KEY (category_id)
);

CREATE TABLE subcategory(
  subcategory_id varchar(30) NOT NULL,
  subcategory Varchar(50) NOT NULL,
  PRIMARY KEY (subcategory_id)
); 

CREATE TABLE contacts(
   contact_id int NOT NULL,
   first_name Varchar(100) NOT NULL,
   last_name Varchar(100) NOT NULL,
   email Varchar(100),
  PRIMARY KEY (contact_id)
); 

CREATE TABLE campaign (
  cf_id int NOT NULL,
  contact_id int NOT NULL,
  company_name Varchar(100) NOT NULL,
  description  Varchar(100) NOT NULL,
  goal float NOT NULL,
  pledged float NOT NULL,
  outcome varchar(50) NOT NULL,
  backers_count int NOT NULL,
  country Varchar(100) NOT NULL,
  currency Varchar(100) NOT NULL,
  launch_date Timestamp NOT NULL,
  end_date Timestamp NOT NULL,
  category_id Varchar(50) NOT NULL,
  subcategory_id Varchar(50) NOT NULL,
  FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
  FOREIGN KEY (category_id) REFERENCES category(category_id),
  FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
  PRIMARY KEY (cf_id)
  );
