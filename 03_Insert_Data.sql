USE NHS_Schema;
 
SET FOREIGN_KEY_CHECKS = 0;
 
-- ===========================

-- Insert Patients

-- ===========================

INSERT INTO Patient (PatientID, PatientName, PatientAddress, PatientDOB) VALUES

(1, 'John Smith', '12 High Street, London', '1980-04-12'),

(2, 'Sarah Jones', '45 Oak Road, Croydon', '1990-09-23'),

(3, 'Ahmed Khan', '78 Green Lane, Birmingham', '1985-02-17'),

(4, 'Emily Brown', '23 Park Avenue, Manchester', '1992-11-05'),

(5, 'David Wilson', '9 Church Road, Leeds', '1978-07-30');
 
-- ===========================

-- Insert Clinics

-- ===========================

INSERT INTO Clinic (ClinicID, ClinicName, ClinicAddress) VALUES

(1, 'Central Health Clinic', '10 Main Street, London'),

(2, 'Westside Medical Centre', '55 Station Road, Croydon'),

(3, 'Greenfield Clinic', '8 Green Street, Birmingham'),

(4, 'City Care Clinic', '17 King Road, Manchester'),

(5, 'Riverside Medical Centre', '25 River Lane, Leeds');
 
-- ===========================

-- Insert Doctors

-- ===========================

INSERT INTO Doctor (DoctorID, DoctorName, Speciality, ClinicID) VALUES

(1, 'Dr Patel', 'General Practice', 1),

(2, 'Dr Taylor', 'Cardiology', 2),

(3, 'Dr Ahmed', 'Dermatology', 3),

(4, 'Dr Wilson', 'Paediatrics', 4),

(5, 'Dr Evans', 'Neurology', 5);
 
-- ===========================

-- Insert Medications

-- ===========================

INSERT INTO Medication (MedicationID, MedicationName) VALUES

(1, 'Paracetamol'),

(2, 'Ibuprofen'),

(3, 'Amoxicillin'),

(4, 'Metformin'),

(5, 'Omeprazole');
 
-- ===========================

-- Insert Appointments

-- ===========================

INSERT INTO Appointment (AppointmentID, PatientID, DoctorID, AppointmentDate, AppointmentTime, Notes) VALUES

(1, 1, 1, '2026-06-01', '09:00:00', 'Routine annual check-up.'),

(2, 2, 2, '2026-06-02', '10:30:00', 'Patient reports chest discomfort during exercise.'),

(3, 3, 3, '2026-06-03', '11:00:00', 'Assessment of persistent skin rash.'),

(4, 4, 4, '2026-06-04', '14:00:00', 'Child vaccination appointment.'),

(5, 5, 5, '2026-06-05', '15:30:00', 'Follow-up regarding migraine symptoms.');
 
-- ===========================

-- Insert Appointment_Medication

-- ===========================

INSERT INTO Appointment_Medication (AppointmentID, MedicationID) VALUES

(1, 1),

(1, 2),

(2, 2),

(3, 3),

(3, 4),

(4, 1),

(5, 5);
 
SET FOREIGN_KEY_CHECKS = 1;
 