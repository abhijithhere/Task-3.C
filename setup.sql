-- Patients Table with coloumns -patient_id, name


CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    name VARCHAR(100),
    dob DATE
);

-- Visits Table with coloumns -visit_id, patient_id, visit_date

CREATE TABLE Visits (
    visit_id INT PRIMARY KEY,
    patient_id INT,
    visit_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);


-- Diagnoses Table with coloumns -diagnosis_id, visit_id, condition_code


CREATE TABLE Diagnoses (
    diagnosis_id INT PRIMARY KEY,
    visit_id INT,
    condition_code VARCHAR(20),
    FOREIGN KEY (visit_id) REFERENCES Visits(visit_id)
);


-- Medical_Images Table with coloumns -image_id, patient_id, image_type, generated_date


CREATE TABLE Medical_Images (
    image_id INT PRIMARY KEY,
    patient_id INT,
    image_type VARCHAR(50),
    generated_date DATE,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);



-- inserting vaues into each tables


-- Insert dummy patients


INSERT INTO Patients (patient_id, name, dob) VALUES
(1, 'Alice Smith', '1985-06-15'),
(2, 'Bob Johnson', '1990-09-23'),
(3, 'Charlie Lee', '1978-11-05'),
(4, 'Diana Patel', '2000-03-30');


-- Insert visits


INSERT INTO Visits (visit_id, patient_id, visit_date) VALUES
(101, 1, '2023-01-05'),
(102, 1, '2024-05-20'),
(103, 2, '2024-03-10'),
(104, 3, '2022-12-01'),
(105, 3, '2023-07-15'),
(106, 3, '2023-09-01'),
(107, 3, '2023-11-05'),
(108, 3, '2024-02-28'),
(109, 3, '2024-06-01'),
(110, 4, '2024-04-01');


-- Insert diagnoses


INSERT INTO Diagnoses (diagnosis_id, visit_id, condition_code) VALUES
(201, 101, 'C001'),
(202, 102, 'C002'),
(203, 103, 'D123'),
(204, 104, 'D123'),
(205, 105, 'C001'),
(206, 106, 'D123'),
(207, 107, 'D123'),
(208, 108, 'C001'),
(209, 109, 'C002'),
(210, 110, 'D123');


-- Insert medical images


INSERT INTO Medical_Images (image_id, patient_id, image_type, generated_date) VALUES
(301, 1, 'X-Ray', '2024-05-21'),
(302, 1, 'CT Scan', '2023-01-06'),
(303, 2, 'MRI', '2024-03-11'),
(304, 3, 'Ultrasound', '2023-08-01'),
(305, 3, 'X-Ray', '2023-09-02'),
(306, 3, 'CT Scan', '2023-11-10'),
(307, 3, 'MRI', '2024-03-01'),
(308, 4, 'X-Ray', '2024-04-02');
