DELIMITER $$
 
CREATE TRIGGER trg_AppointmentNotes_Update
BEFORE UPDATE ON Appointment
FOR EACH ROW
BEGIN
    IF OLD.Notes <> NEW.Notes THEN
        INSERT INTO AppointmentNotes_Audit (AppointmentID, OldNotes, NewNotes, ChangedAt)
        VALUES (OLD.AppointmentID, OLD.Notes, NEW.Notes, NOW());
    END IF;
END $$
 
DELIMITER ;