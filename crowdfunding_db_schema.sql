
CREATE TABLE category(
category_id VARCHAR(30) PRIMARY KEY,
category VARCHAR(30)
);

CREATE TABLE subcategory(
subcategory_id VARCHAR(30) PRIMARY KEY,
subcategory VARCHAR(30)
);

CREATE TABLE contacts(
contact_id INTEGER PRIMARY KEY,
first_name VARCHAR(30),
last_name VARCHAR(30),
email VARCHAR(30)
);

CREATE TABLE campaign(
cf_id INTEGER PRIMARY KEY,
contact_id INTEGER NOT NULL,
company_name VARCHAR(30),
description VARCHAR(30),
goal FLOAT,
pledged FLOAT,
outcome VARCHAR(30)
backers_count INTEGER,
country VARCHAR(30),
currency VARCHAR(30),
launch_date DATE,
end_date DATE,
category_id VARCHAR(30) NOT NULL,
subcategory_id VARCHAR(30) NOT NULL,
FOREIGN KEY (category_id) REFERENCES category(category_id),
FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
FOREIGN KEY (contact_id) REFERENCES contacts (contact_id) 
);
