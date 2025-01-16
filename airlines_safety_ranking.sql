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
UPDATE airlines 
SET 
	incidents = 8, 
	last_incident_dt = '2008-11-27', 
	fatalities = 268, 
	IOSA_certification = 1, 
	ICAO_country_audit_pass = 1, 
	pilot_training = 'Air New Zealand invests heavily in pilot training and development, contributing to its reputation as one of the safest airlines in the world.',
	fleet_age = 10.4,
	fleet_size = 112,
	rate_incidents = 0.0,
	profitability = 0.104
WHERE id = 1

UPDATE airlines 
SET 
	incidents = 23, 
	last_incident_dt = '2017-10-14', 
	fatalities = 41, 
	IOSA_certification = 1, 
	ICAO_country_audit_pass = 1, 
	pilot_training = 'The airline operates its own Qantas Group Pilot Academy, which provides world-class training for its pilots.',
	fleet_age = 15.0,
	fleet_size = 126,
	rate_incidents = 0.05,
	profitability = 8.5
WHERE id = 2

UPDATE airlines 
SET 
	incidents = 10, 
	last_incident_dt = '2018-08-15', 
	fatalities = 140, 
	IOSA_certification = 1, 
	ICAO_country_audit_pass = 1, 
	pilot_training = 'Cathay Pacific offers pilot training through its own Cathay Pacific Flight Training Centre (CPFTC).',
	fleet_age = 8.4,
	fleet_size = 151,
	rate_incidents = 0.004,
	profitability = 2.2
WHERE id = 3

UPDATE airlines 
SET 
	incidents = 5, 
	last_incident_dt = '2017-12-08', 
	fatalities = 0, 
	IOSA_certification = 1, 
	ICAO_country_audit_pass = 1, 
	pilot_training = 'Qatar Airways offers a Cadet Pilot Training Program to develop future airline pilots. ',
	fleet_age = 6,
	fleet_size = 210,
	rate_incidents = 0.003,
	profitability = 1.4
WHERE id = 4

UPDATE airlines 
SET 
	incidents = 3, 
	last_incident_dt = '2019-08-23', 
	fatalities = 1, 
	IOSA_certification = 1, 
	ICAO_country_audit_pass = 1, 
	pilot_training = 'Emirates offers pilot training through the Emirates Flight Training Academy (EFTA) for experienced and cadet pilots.',
	fleet_age = 6,
	fleet_size = 270,
	rate_incidents = 0.002,
	profitability = 1.1
WHERE id = 5

UPDATE airlines 
SET 
	incidents = 4, 
	last_incident_dt = '2017-11-19', 
	fatalities = 0, 
	IOSA_certification = 1, 
	ICAO_country_audit_pass = 1, 
	pilot_training = 'Virgin Australia does not offer pilot training, but it does provide professional development for its pilots.',
	fleet_age = 7,
	fleet_size = 37,
	rate_incidents = 0.004,
	profitability = -0.049
WHERE id = 6

UPDATE airlines 
SET 
	incidents = 0, 
	last_incident_dt = NULL, 
	fatalities = 0, 
	IOSA_certification = 1, 
	ICAO_country_audit_pass = 1, 
	pilot_training = 'Etihad Airways offers pilot training through its Etihad Aviation Training (EAT) facility in Abu Dhabi.',
	fleet_age = 7.5,
	fleet_size = 103,
	rate_incidents = 0.003,
	profitability = -1.7
WHERE id = 7

UPDATE airlines 
SET 
	incidents = 31, 
	last_incident_dt = '2012-06-20', 
	fatalities = 389, 
	IOSA_certification = 1, 
	ICAO_country_audit_pass = 1, 
	pilot_training = 'All Nippon Airways (ANA) does not offer pilot training directly, but it does partner with flight schools to train its pilots.',
	fleet_age = 6.2,
	fleet_size = 251,
	rate_incidents = 0.001,
	profitability = 0.850
WHERE id = 8

UPDATE airlines 
SET 
	incidents = 4, 
	last_incident_dt = '2017-12-02', 
	fatalities = 0, 
	IOSA_certification = 1, 
	ICAO_country_audit_pass = 0, 
	pilot_training = 'EVA Air offers pilot training through its subsidiary, the EVA Flight Training Academy (EVA FTA).',
	fleet_age = 7.5,
	fleet_size = 92,
	rate_incidents = 0.001,
	profitability = 0.380
WHERE id = 9

UPDATE airlines 
SET 
	incidents = 17, 
	last_incident_dt = '2022-10-23', 
	fatalities = 434, 
	IOSA_certification = 1, 
	ICAO_country_audit_pass = 1, 
	pilot_training = 'Korean Air partners with the Flight Education Center at Korea Aerospace University to train pilots.',
	fleet_age = 10.3,
	fleet_size = 159,
	rate_incidents = 0.015,
	profitability = 0.520
WHERE id = 10

UPDATE airlines 
SET 
	incidents = 18, 
	last_incident_dt = '2018-08-10', 
	fatalities = 228, 
	IOSA_certification = 1, 
	ICAO_country_audit_pass = 1, 
	pilot_training = 'Alaska focuses on recruiting and training pilots with no experience.',
	fleet_age = 9.5,
	fleet_size = 330,
	rate_incidents = 0.007,
	profitability = 0.700
WHERE id = 11

UPDATE airlines 
SET 
	incidents = 21, 
	last_incident_dt = '2021-12-30', 
	fatalities = 148, 
	IOSA_certification = 1, 
	ICAO_country_audit_pass = 1, 
	pilot_training = 'Turkish Airlines has a flight academy that trains pilots for the airline: The Turkish Airlines Aviation Academy (TAAA).',
	fleet_age = 9.4,
	fleet_size = 374,
	rate_incidents = 0.006,
	profitability = 1.5
WHERE id = 12

UPDATE airlines 
SET 
	incidents = 10, 
	last_incident_dt = '2022-09-02', 
	fatalities = 136, 
	IOSA_certification = 1, 
	ICAO_country_audit_pass = 1, 
	pilot_training = 'TAP Air Portugal has a pilot training center at the Cascais Municipal Aerodrome.',
	fleet_age = 13.2,
	fleet_size = 80,
	rate_incidents = 0.010,
	profitability = 0.065
WHERE id = 13

UPDATE airlines 
SET 
	incidents = 5, 
	last_incident_dt = '2021-09-23', 
	fatalities = 0, 
	IOSA_certification = 1, 
	ICAO_country_audit_pass = 0, 
	pilot_training = 'Hawaiian Airlines has a pilot training program at its flight school in New Smyrna Beach, Florida.',
	fleet_age = 11.5,
	fleet_size = 71,
	rate_incidents = 0.005,
	profitability = 0.079
WHERE id = 14

UPDATE airlines 
SET 
	incidents = 115, 
	last_incident_dt = '2021-05-28', 
	fatalities = 3164, 
	IOSA_certification = 1, 
	ICAO_country_audit_pass = 0, 
	pilot_training = 'American Airlines offers pilot training through its American Airlines Cadet Academy.',
	fleet_age = 11.0,
	fleet_size = 977,
	rate_incidents = 0.004,
	profitability = 2.89
WHERE id = 15

UPDATE airlines 
SET 
	incidents = 34, 
	last_incident_dt = '2016-12-26', 
	fatalities = 411, 
	IOSA_certification = 1, 
	ICAO_country_audit_pass = 0, 
	pilot_training = 'SAS Scandinavian Airlines has a pilot training program. SAS partners with other organizations to provide training for its pilots.',
	fleet_age = 8.6,
	fleet_size = 84,
	rate_incidents = 0.010,
	profitability = -2.7
WHERE id = 16

UPDATE airlines 
SET 
	incidents = 28, 
	last_incident_dt = '2021-06-18', 
	fatalities = 65, 
	IOSA_certification = 1, 
	ICAO_country_audit_pass = 1, 
	pilot_training = 'British Airways offers pilot training through its Speedbird Pilot Academy.',
	fleet_age = 12.9,
	fleet_size = 280,
	rate_incidents = 0.004,
	profitability = 1.5
WHERE id = 17

UPDATE airlines 
SET 
	incidents = 46, 
	last_incident_dt = '2008-07-31', 
	fatalities = 600, 
	IOSA_certification = 1, 
	ICAO_country_audit_pass = 0, 
	pilot_training = 'Iberia offers a pilot training program called Iberia Cadetes.',
	fleet_age = 9.6,
	fleet_size = 135,
	rate_incidents = 0.003,
	profitability = 0.456
WHERE id = 18

UPDATE airlines 
SET 
	incidents = 4, 
	last_incident_dt = '2022-02-07', 
	fatalities = 0, 
	IOSA_certification = 1, 
	ICAO_country_audit_pass = 0, 
	pilot_training = 'Finnair Flight Academy offers pilot training courses for qualified pilots.',
	fleet_age = 11.2,
	fleet_size = 84,
	rate_incidents = 0.002,
	profitability = 0.342
WHERE id = 19

UPDATE airlines 
SET 
	incidents = 30, 
	last_incident_dt = '2019-07-30', 
	fatalities = 154, 
	IOSA_certification = 1, 
	ICAO_country_audit_pass = 0, 
	pilot_training = 'Lufthansa offers pilot training through the European Flight Academy (EFA).',
	fleet_age = 9.6,
	fleet_size = 331,
	rate_incidents = 0.003,
	profitability = 0.53
WHERE id = 20

UPDATE airlines 
SET 
	incidents = 3, 
	last_incident_dt = '2015-01-20', 
	fatalities = 0, 
	IOSA_certification = 1, 
	ICAO_country_audit_pass = 0, 
	pilot_training = 'Swiss offers pilot training through the European Flight Academy (EFA). ',
	fleet_age = 9.4,
	fleet_size = 95,
	rate_incidents = 0.003,
	profitability = 1.2
WHERE id = 21 


--Results
SELECT * FROM low_cost_airlines
SELECT * FROM full_service_airlines
SELECT * FROM airlines
