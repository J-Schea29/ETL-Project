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
  Lat INT NOT NULL,
  Lng INT NOT NULL,
  max_temp INT NOT NULL,
  min_temp INT NOT NULL,
  Temp INT NOT NULL,
  Humidity INT NOT NULL,
  diurnal_range INT NOT NULL,
  FOREIGN KEY (region_id) REFERENCES region (region_id)  
);

---Table for Wine Data
CREATE TABLE wine (
  index INT,
  region_id INT NOT NULL,
  variety TEXT,
  points INT NOT NULL,
  price INT NOT NULL,
  FOREIGN KEY (region_id) REFERENCES region (region_id)
);