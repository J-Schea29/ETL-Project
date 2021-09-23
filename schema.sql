---CREATE TABLES FOR CSV

---Table for Region Data
CREATE TABLE region (
  index INT,
  region_id INT PRIMARY KEY,
  country TEXT,
  province TEXT,
  Region TEXT
);

---Table for Weather Data
CREATE TABLE weather (
  index INT,
  region_id INT NOT NULL,
  Lat decimal (10, 2) NOT NULL,
  Lng decimal (10, 2) NOT NULL,
  max_temp decimal (10, 2) NOT NULL,
  min_temp decimal (10, 2) NOT NULL,
  Temp decimal (10, 2) NOT NULL,
  Humidity decimal (10, 2) NOT NULL,
  diurnal_range decimal (10, 2) NOT NULL,
  FOREIGN KEY (region_id) REFERENCES region (region_id)  
);

---Table for Wine Data
CREATE TABLE wine (
  index INT,
  region_id INT NOT NULL,
  variety TEXT,
  points INT NOT NULL,
  price decimal (10, 2) NOT NULL,
  FOREIGN KEY (region_id) REFERENCES region (region_id)
);