--Top 25 Safest Low-Cost Airlines for 2025 
CREATE TABLE low_cost_airlines (
	id INT PRIMARY KEY,
    airline_name VARCHAR(300)
);

--Top 25 Safest Full-Cost Airlines for 2025 
CREATE TABLE full_service_airlines (
	id INT PRIMARY KEY,
    airline_name VARCHAR(300)
);

--All Airlines 
CREATE TABLE airlines(
	id INT PRIMARY KEY,
    airline_name VARCHAR(300),
	incidents INT,
	last_incident_dt DATE,
	fleet_age FLOAT,
	fleet_size INT,
	rate_incidents FLOAT,
	fatalities INT,
	profitability FLOAT,
	IOSA_certification BIT,
	ICAO_country_audit_pass BIT,
	pilot_training VARCHAR (300)
);

--Adding and updating low_cost column
ALTER TABLE airlines ADD low_cost BIT;

UPDATE airlines SET low_cost = 1 WHERE id in (
27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 
40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51)

--Inserting data according to Forbes and AirlineRatings article
INSERT INTO full_service_airlines VALUES 
	(1, 'Air New Zealand'),
    (2, 'Qantas'),
    (3, 'Cathay Pacific; Qatar Airways; Emirates'),
    (4, 'Virgin Australia'),
    (5, 'Etihad Airways'),
    (6, 'ANA'),
    (7, 'EVA Air'),
    (8, 'Korean Air'),
    (9, 'Alaska Airlines'),
    (10, 'Turkish Airlines'),
    (11, 'TAP Portugal'),
    (12, 'Hawaiian Airlines'),
    (13, 'American Airlines'),
    (14, 'SAS'),
    (15, 'British Airways'),
    (16, 'Iberia'),
    (17, 'Finnair'),
    (18, 'Lufthansa; Swiss'),
    (19, 'JAL'),
    (20, 'Air Canada'),
    (21, 'Delta Airlines'),
    (22, 'Vietnam Airlines'),
    (23, 'United Airlines');

INSERT INTO low_cost_airlines VALUES 
	(1, 'Hong Kong Express'),
    (2, 'Jetstar Group'),
    (3, 'Ryanair'),
    (4, 'easyJet'),
    (5, 'Frontier Airlines'),
    (6, 'AirAsia'),
    (7, 'Wizz Air'),
    (8, 'VietJet Air'),
    (9, 'Southwest Airlines'),
    (10, 'Volaris'),
    (11, 'flydubai'),
    (12, 'Norwegian'),
    (13, 'Vueling'),
    (14, 'Jet2'),
    (15, 'Sun Country Airlines'),
    (16, 'WestJet'),
    (17, 'JetBlue Airways'),
    (18, 'Air Arabia'),
    (19, 'IndiGo'),
    (20, 'Eurowings'),
    (21, 'Allegiant Air'),
    (22, 'Cebu Pacific'),
    (23, 'ZipAir'),
    (24, 'SKY Airline'),
    (25, 'Air Baltic');

INSERT INTO airlines (id, airline_name) VALUES 
	(1, 'Air New Zealand'),
    (2, 'Qantas'),
    (3, 'Cathay Pacific'),
    (4, 'Qatar Airways'),
    (5, 'Emirates'),
    (6, 'Virgin Australia'),
    (7, 'Etihad Airways'),
    (8, 'ANA'),
    (9, 'EVA Air'),
    (10, 'Korean Air'),
    (11, 'Alaska Airlines'),
    (12, 'Turkish Airlines'),
    (13, 'TAP Portugal'),
    (14, 'Hawaiian Airlines'),
    (15, 'American Airlines'),
    (16, 'SAS'),
    (17, 'British Airways'),
    (18, 'Iberia'),
    (19, 'Finnair'),
    (20, 'Lufthansa'),
    (21, 'Swiss'),
    (22, 'JAL'),
    (23, 'Air Canada'),
    (24, 'Delta Airlines'),
    (25, 'Vietnam Airlines'),
    (26, 'United Airlines'),
	(27, 'Hong Kong Express'),
    (28, 'Jetstar Group'),
    (29, 'Ryanair'),
    (30, 'easyJet'),
    (31, 'Frontier Airlines'),
    (32, 'AirAsia'),
    (33, 'Wizz Air'),
    (34, 'VietJet Air'),
    (35, 'Southwest Airlines'),
    (36, 'Volaris'),
    (37, 'flydubai'),
    (38, 'Norwegian'),
    (39, 'Vueling'),
    (40, 'Jet2'),
    (41, 'Sun Country Airlines'),
    (42, 'WestJet'),
    (43, 'JetBlue Airways'),
    (44, 'Air Arabia'),
    (45, 'IndiGo'),
    (46, 'Eurowings'),
    (47, 'Allegiant Air'),
    (48, 'Cebu Pacific'),
    (49, 'ZipAir'),
    (50, 'SKY Airline'),
    (51, 'Air Baltic');

--Updating the data according to ASN website


--Results
SELECT * FROM low_cost_airlines
SELECT * FROM full_service_airlines
SELECT * FROM airlines