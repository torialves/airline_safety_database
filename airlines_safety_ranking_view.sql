CREATE VIEW VW_safest_airlines

AS

WITH normalized_data AS (
    SELECT 
        id, 
        airline_name,
        last_incident_dt,
        fatalities,
        fleet_age, 
        fleet_size, 
        rate_incidents, 
        profitability, 
        IOSA_certification, 
        ICAO_country_audit_pass, 
        pilot_training,
        -- Check if last incident was within the past 2 years
        CASE 
            WHEN last_incident_dt >= DATEADD(YEAR, -2, GETDATE()) THEN 1
            ELSE 0
        END AS recent_incident_flag,
        -- Normalize fatalities by fleet size
        fatalities / fleet_size AS fatalities_per_aircraft,
		-- Check if airline is low cost
        CASE 
            WHEN low_cost = 1 THEN 'Yes'
            ELSE 'No'
        END AS low_cost
    FROM airlines
    WHERE 
        IOSA_certification = 1 -- Disqualify airlines failing IOSA
        AND ICAO_country_audit_pass = 1 -- Disqualify countries failing ICAO
        AND profitability > 0 -- Disqualify financially unstable airlines
),
safety_calculated AS (
    SELECT 
        id, 
        airline_name,
        recent_incident_flag,
        fatalities_per_aircraft,
        fleet_age, 
        fleet_size, 
        rate_incidents,
        profitability,
        pilot_training,
        low_cost,
        -- Safety score (Fictional example weighting applied)
		(recent_incident_flag * 0.5) + (fatalities_per_aircraft * 0.3) + (fleet_age * 0.1) - (profitability * 0.2) AS safety_score
	
    FROM normalized_data
)
SELECT TOP 100 PERCENT  
	ROW_NUMBER() OVER (
		ORDER BY 
			low_cost ASC, 
			safety_score ASC, 
			profitability DESC
	) AS row_id,
    id, 
    airline_name,
    recent_incident_flag,
    fatalities_per_aircraft,
    fleet_age, 
    fleet_size, 
    rate_incidents,
    profitability,
	safety_score,
    pilot_training,
    low_cost
	
FROM safety_calculated
ORDER BY 
	low_cost ASC, -- Filtering by full service airlines
    safety_score ASC, -- Lower scores indicate safer airlines
    profitability DESC; -- Financially stronger airlines preferred
