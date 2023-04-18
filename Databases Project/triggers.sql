# Insert Trigger For Adding Districts to Cities
delimiter $$
CREATE TRIGGER district_insert
AFTER INSERT ON districts
FOR EACH ROW
BEGIN
	UPDATE cities 
    SET num_districts = num_districts + 1 
    WHERE id = NEW.city_id;
END$$
delimiter ;



# Insert Trigger For Adding Devices to Districts
delimiter $$
CREATE TRIGGER device_insert
AFTER INSERT ON devices
FOR EACH ROW
BEGIN
	UPDATE districts
    SET num_devices = num_devices + 1 
    WHERE id = NEW.district_id;
END$$
delimiter ;



# Insert Trigger For Creating a Ticket
delimiter $$
CREATE TRIGGER ticket_creation
AFTER UPDATE ON devices
FOR EACH ROW
BEGIN
    DECLARE id_variable INT;
    SET id_variable = NEW.id;
    
    IF (OLD.is_active = true) AND (NEW.is_active = false) THEN 
		INSERT INTO tickets (device_id, start_time, priority) VALUES (id_variable, CURRENT_TIMESTAMP, 2);
    END IF;
END$$
delimiter ;



# Insert Trigger For Re-Activating a Device
delimiter $$
CREATE TRIGGER device_reactivation
AFTER DELETE ON tickets
FOR EACH ROW
BEGIN
	UPDATE devices
    SET is_active = TRUE
    WHERE id = OLD.device_id;
END$$
delimiter ;