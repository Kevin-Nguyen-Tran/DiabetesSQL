CREATE TABLE patients (
	id SERIAL PRIMARY KEY,
	num_of_preg SMALLINT,
	BMI decimal,
	age SMALLINT,
	diabetic_outcome VARCHAR(5),
	vital_id INT REFERENCES vitals(id)
); --creating patients table

CREATE TABLE vitals(
	id SERIAL PRIMARY KEY,
	glucose_level SMALLINT,
	blood_pressure SMALLINT,
	skin_thickness SMALLINT,
	insulin_level SMALLINT
); --creating vitals table

SELECT * FROM vitals; --checking values were inputted correctly

SELECT * FROM patients
ORDER BY id; --checking values were inputted correctly

UPDATE patients
SET diabetic_outcome = 'Yes'
WHERE diabetic_outcome = '1'; --cleaning data to reflect strings of yes or no for clarity

UPDATE patients
SET diabetic_outcome = 'No'
WHERE diabetic_outcome = '0'; --cleaning data as stated above
