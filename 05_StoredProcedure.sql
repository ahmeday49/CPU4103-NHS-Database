DELIMITER $$
 
CREATE PROCEDURE CreateAppointment(

    IN p_PatientID INT,

    IN p_DoctorID INT,

    IN p_AppointmentDate DATE,

    IN p_AppointmentTime TIME,

    IN p_Notes TEXT

)

BEGIN

    INSERT INTO Appointment (PatientID, DoctorID, AppointmentDate, AppointmentTime, Notes)

    VALUES (p_PatientID, p_DoctorID, p_AppointmentDate, p_AppointmentTime, p_Notes);

END $$
 
CALL CreateAppointment(1, 1, '2026-06-10', '10:00:00', 'Created via stored procedure.');

SELECT * FROM Appointment;

 