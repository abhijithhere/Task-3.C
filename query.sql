--Patients with visits after a specific date and a condition code


SELECT DISTINCT p.patient_id, p.name, v.visit_date, d.condition_code
FROM Patients p
JOIN Visits v ON p.patient_id = v.patient_id
JOIN Diagnoses d ON v.visit_id = d.visit_id
WHERE v.visit_date > '2023-01-01'
  AND d.condition_code = 'C001';


--Medical images for patients diagnosed with a specific disease


SELECT mi.image_id, mi.patient_id, p.name, mi.image_type, mi.generated_date
FROM Medical_Images mi
JOIN Patients p ON mi.patient_id = p.patient_id
WHERE mi.patient_id IN (
    SELECT DISTINCT v.patient_id
    FROM Visits v
    JOIN Diagnoses d ON v.visit_id = d.visit_id
    WHERE d.condition_code = 'D123'
)
ORDER BY mi.generated_date;


--Patients with more than 5 visits and their image count


SELECT p.patient_id, p.name, COUNT(DISTINCT v.visit_id) AS total_visits, COUNT(mi.image_id) AS total_images
FROM Patients p
JOIN Visits v ON p.patient_id = v.patient_id
LEFT JOIN Medical_Images mi ON p.patient_id = mi.patient_id
GROUP BY p.patient_id, p.name
HAVING COUNT(DISTINCT v.visit_id) > 5;
