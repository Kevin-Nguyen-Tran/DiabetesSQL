//What is the average age, number of pregnancies, and BMI of a non-diabetic and diabetic patient?

SELECT ROUND(AVG(age), 2) AS avg_age, ROUND(AVG(num_of_preg), 2) AS avg_num_of_preg, ROUND(AVG(bmi), 2) AS avg_bmi, diabetic_outcome FROM patients
GROUP BY diabetic_outcome;

// What is the average glucose level of a diabetic patient and non-diabetic patient per age?

SELECT age, ROUND(avg(glucose_level), 2) AS avg_glucose, diabetic_outcome FROM patients
JOIN vitals ON vitals.id = patients.vital_id
GROUP BY age, diabetic_outcome
ORDER BY age ASC;

// What is the average glucose level, blood pressure level, skin thickness, and insulin level or a diabetic patient vs. non-diabetic patient?

SELECT diabetic_outcome, AVG(glucose_level) AS avg_glucose, AVG(blood_pressure) AS avg_bp, AVG(skin_thickness) AS avg_skin, AVG(insulin_level) AS avg_insulin
FROM vitals JOIN patients ON patients.vital_id = vitals.id
GROUP BY diabetic_outcome;
