USE nhs_schema;
 
-- ===========================

-- PATIENT

-- ===========================

CREATE TABLE Patient (

    PatientID INT PRIMARY KEY,

    PatientName VARCHAR(100) NOT NULL,

    PatientAddress VARCHAR(255),

    PatientDOB DATE

);
 
-- ===========================

-- CLINIC

-- ===========================

CREATE TABLE Clinic (

    ClinicID INT PRIMARY KEY,

    ClinicName VARCHAR(100) NOT NULL,

    ClinicAddress VARCHAR(255)

);
 
-- ===========================

-- DOCTOR

-- ===========================

CREATE TABLE Doctor (

    DoctorID INT PRIMARY KEY,

    DoctorName VARCHAR(100) NOT NULL,

    Speciality VARCHAR(100),

    ClinicID INT,

    FOREIGN KEY (ClinicID) REFERENCES Clinic(ClinicID)

);
 
-- ===========================

-- MEDICATION

-- ===========================

CREATE TABLE Medication (

    MedicationID INT PRIMARY KEY,

    MedicationName VARCHAR(100) NOT NULL

);
 
-- ===========================

-- APPOINTMENT

-- ===========================

CREATE TABLE Appointment (

    AppointmentID INT PRIMARY KEY,

    PatientID INT,

    DoctorID INT,

    AppointmentDate DATE,

    AppointmentTime TIME,

    Notes TEXT,

    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),

    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID)

);
 
-- ===========================

-- APPOINTMENT_MEDICATION (Junction Table)

-- ===========================

CREATE TABLE Appointment_Medication (

    AppointmentID INT,

    MedicationID INT,

    PRIMARY KEY (AppointmentID, MedicationID),

    FOREIGN KEY (AppointmentID) REFERENCES Appointment(AppointmentID),

    FOREIGN KEY (MedicationID) REFERENCES Medication(MedicationID)

);

 