-- Create roles
CREATE ROLE role_admin;
CREATE ROLE role_doctor;
CREATE ROLE role_receptionist;
CREATE ROLE role_patient;
 
-- Grant privileges to roles
-- Admin: full control
GRANT ALL PRIVILEGES ON NHS_Schema.* TO role_admin;
 
-- Doctor: read patients, appointments, medications; update appointments (notes)
GRANT SELECT ON NHS_Schema.Patient TO role_doctor;
GRANT SELECT, UPDATE ON NHS_Schema.Appointment TO role_doctor;
GRANT SELECT ON NHS_Schema.Medication TO role_doctor;
 
-- Receptionist: manage appointments, read patients
GRANT SELECT ON NHS_Schema.Patient TO role_receptionist;
GRANT SELECT, INSERT, UPDATE ON NHS_Schema.Appointment TO role_receptionist;
 
-- Patient: read-only access to Patient table
GRANT SELECT ON NHS_Schema.Patient TO role_patient;
 
-- Create users
CREATE USER 'admin_user'@'localhost' IDENTIFIED BY 'AdminPass123!';
CREATE USER 'doctor_user'@'localhost' IDENTIFIED BY 'DoctorPass123!';
CREATE USER 'reception_user'@'localhost' IDENTIFIED BY 'ReceptionPass123!';
CREATE USER 'patient_user'@'localhost' IDENTIFIED BY 'PatientPass123!';
 
-- Assign roles to users
GRANT role_admin TO 'admin_user'@'localhost';
GRANT role_doctor TO 'doctor_user'@'localhost';
GRANT role_receptionist TO 'reception_user'@'localhost';
GRANT role_patient TO 'patient_user'@'localhost';
 
-- Optional: activate roles by default
SET DEFAULT ROLE ALL TO 'admin_user'@'localhost';
SET DEFAULT ROLE ALL TO 'doctor_user'@'localhost';
SET DEFAULT ROLE ALL TO 'reception_user'@'localhost';
SET DEFAULT ROLE ALL TO 'patient_user'@'localhost';