CREATE TABLE cities (
	id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name varchar(255) NOT NULL,
    num_districts int NOT NULL DEFAULT 0
);

CREATE TABLE districts (
	id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    city_id int NOT NULL,
    name varchar(255) NOT NULL,
    num_devices int NOT NULL DEFAULT 0,
    FOREIGN KEY (city_id) REFERENCES cities(id)
);

CREATE TABLE devices (
	id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    type varchar(255) NOT NULL,
    district_id int NOT NULL,
    is_active bool NOT NULL DEFAULT true,
    FOREIGN KEY (district_id) REFERENCES districts(id)
);

CREATE TABLE tickets (
	id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
    device_id int NOT NULL,
    start_time datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    priority int NOT NULL,
    FOREIGN KEY (device_id) REFERENCES devices(id)
);

INSERT INTO cities (name, num_districts) VALUES ('Atlanta', 6);
INSERT INTO cities (name, num_districts) VALUES ('Athens', 4);
INSERT INTO cities (name, num_districts) VALUES ('Augusta', 3);

# Atlanta
INSERT INTO districts (city_id, name, num_devices) VALUES (1, 'Downtown', 12);
INSERT INTO districts (city_id, name, num_devices) VALUES (1, 'Midtown', 10);
INSERT INTO districts (city_id, name, num_devices) VALUES (1, 'Atlantic Station', 12);
INSERT INTO districts (city_id, name, num_devices) VALUES (1, 'Lenox', 11);
INSERT INTO districts (city_id, name, num_devices) VALUES (1, 'West Lake', 10);
INSERT INTO districts (city_id, name, num_devices) VALUES (1, 'Brookwood', 11);

# Athens
INSERT INTO districts (city_id, name, num_devices) VALUES (2, 'Downtown', 10);
INSERT INTO districts (city_id, name, num_devices) VALUES (2, 'Five Points', 12);
INSERT INTO districts (city_id, name, num_devices) VALUES (2, 'Epps', 11);
INSERT INTO districts (city_id, name, num_devices) VALUES (2, 'Beechwood', 10);

# Augusta
INSERT INTO districts (city_id, name, num_devices) VALUES (3, 'Downtown', 10);
INSERT INTO districts (city_id, name, num_devices) VALUES (3, 'West End', 12);
INSERT INTO districts (city_id, name, num_devices) VALUES (3, 'Forest Hills', 12);

# Downtown, Atlanta
INSERT INTO devices (name, type, district_id) VALUES ('security-cam', 'cctv', 1);
INSERT INTO devices (name, type, district_id) VALUES ('pressure-sensor', 'sensor', 1);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 1);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 1);
INSERT INTO devices (name, type, district_id) VALUES ('temp-sensor', 'sensor', 1);
INSERT INTO devices (name, type, district_id) VALUES ('street-cam', 'cctv', 1);
INSERT INTO devices (name, type, district_id) VALUES ('security-cam', 'cctv', 1);
INSERT INTO devices (name, type, district_id) VALUES ('smoke-sensor', 'sensor', 1);
INSERT INTO devices (name, type, district_id) VALUES ('interior-cam', 'cctv', 1);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 1);
INSERT INTO devices (name, type, district_id) VALUES ('pressure-sensor', 'sensor', 1);
INSERT INTO devices (name, type, district_id) VALUES ('wireless-cam', 'cctv', 1);

# Midtown, Atlanta
INSERT INTO devices (name, type, district_id) VALUES ('pressure-sensor', 'sensor', 2);
INSERT INTO devices (name, type, district_id) VALUES ('wireless-cam', 'cctv', 2);
INSERT INTO devices (name, type, district_id) VALUES ('security-cam', 'cctv', 2);
INSERT INTO devices (name, type, district_id) VALUES ('temp-sensor', 'sensor', 2);
INSERT INTO devices (name, type, district_id) VALUES ('street-cam', 'cctv', 2);
INSERT INTO devices (name, type, district_id) VALUES ('smoke-sensor', 'sensor', 2);
INSERT INTO devices (name, type, district_id) VALUES ('security-cam', 'cctv', 2);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 2);
INSERT INTO devices (name, type, district_id) VALUES ('smoke-sensor', 'sensor', 2);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 2);

# Atlantic Station, Atlanta
INSERT INTO devices (name, type, district_id) VALUES ('wireless-cam', 'cctv', 3);
INSERT INTO devices (name, type, district_id) VALUES ('smoke-sensor', 'sensor', 3);
INSERT INTO devices (name, type, district_id) VALUES ('street-cam', 'cctv', 3);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 3);
INSERT INTO devices (name, type, district_id) VALUES ('pressure-sensor', 'sensor', 3);
INSERT INTO devices (name, type, district_id) VALUES ('street-cam', 'cctv', 3);
INSERT INTO devices (name, type, district_id) VALUES ('security-cam', 'cctv', 3);
INSERT INTO devices (name, type, district_id) VALUES ('interior-cam', 'cctv', 3);
INSERT INTO devices (name, type, district_id) VALUES ('spy-cam', 'cctv', 3);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 3);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 3);
INSERT INTO devices (name, type, district_id) VALUES ('security-cam', 'cctv', 3);

# Lenox, Atlanta
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 4);
INSERT INTO devices (name, type, district_id) VALUES ('security-cam', 'cctv', 4);
INSERT INTO devices (name, type, district_id) VALUES ('street-cam', 'cctv', 4);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 4);
INSERT INTO devices (name, type, district_id) VALUES ('wireless-cam', 'cctv', 4);
INSERT INTO devices (name, type, district_id) VALUES ('pressure-sensor', 'sensor', 4);
INSERT INTO devices (name, type, district_id) VALUES ('smoke-sensor', 'sensor', 4);
INSERT INTO devices (name, type, district_id) VALUES ('hidden-cam', 'cctv', 4);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 4);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 4);
INSERT INTO devices (name, type, district_id) VALUES ('interior-cam', 'cctv', 4);

# West Lake, Atlanta
INSERT INTO devices (name, type, district_id) VALUES ('wireless-cam', 'cctv', 5);
INSERT INTO devices (name, type, district_id) VALUES ('smoke-sensor', 'sensor', 5);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 5);
INSERT INTO devices (name, type, district_id) VALUES ('security-cam', 'cctv', 5);
INSERT INTO devices (name, type, district_id) VALUES ('pressure-sensor', 'sensor', 5);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 5);
INSERT INTO devices (name, type, district_id) VALUES ('interior-cam', 'cctv', 5);
INSERT INTO devices (name, type, district_id) VALUES ('temperature-sensor', 'sensor', 5);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 5);
INSERT INTO devices (name, type, district_id) VALUES ('street-cam', 'cctv', 5);

# Brookwood, Atlanta
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 6);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 6);
INSERT INTO devices (name, type, district_id) VALUES ('temperature-sensor', 'sensor', 6);
INSERT INTO devices (name, type, district_id) VALUES ('pressure-sensor', 'sensor', 6);
INSERT INTO devices (name, type, district_id) VALUES ('security-cam', 'cctv', 6);
INSERT INTO devices (name, type, district_id) VALUES ('road-cam', 'cctv', 6);
INSERT INTO devices (name, type, district_id) VALUES ('store-cam', 'cctv', 6);
INSERT INTO devices (name, type, district_id) VALUES ('security-cam', 'cctv', 6);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 6);
INSERT INTO devices (name, type, district_id) VALUES ('interior-cam', 'cctv', 6);
INSERT INTO devices (name, type, district_id) VALUES ('pressure-sensor', 'sensor', 6);

# Downtown, Athens
INSERT INTO devices (name, type, district_id) VALUES ('security-cam', 'cctv', 7);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 7);
INSERT INTO devices (name, type, district_id) VALUES ('hallway-cam', 'cctv', 7);
INSERT INTO devices (name, type, district_id) VALUES ('pressure-sensor', 'sensor', 7);
INSERT INTO devices (name, type, district_id) VALUES ('road-cam', 'cctv', 7);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 7);
INSERT INTO devices (name, type, district_id) VALUES ('security-cam', 'cctv', 7);
INSERT INTO devices (name, type, district_id) VALUES ('wireless-cam', 'cctv', 7);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 7);
INSERT INTO devices (name, type, district_id) VALUES ('temperature-sensor', 'sensor', 7);

# Five Points, Athens
INSERT INTO devices (name, type, district_id) VALUES ('temperature-sensor', 'sensor', 8);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 8);
INSERT INTO devices (name, type, district_id) VALUES ('park-cam', 'cctv', 8);
INSERT INTO devices (name, type, district_id) VALUES ('security-cam', 'cctv', 8);
INSERT INTO devices (name, type, district_id) VALUES ('bank-cam', 'cctv', 8);
INSERT INTO devices (name, type, district_id) VALUES ('pressure-sensor', 'sensor', 8);
INSERT INTO devices (name, type, district_id) VALUES ('traffuc', 'traffic_light', 8);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 8);
INSERT INTO devices (name, type, district_id) VALUES ('security-cam', 'cctv', 8);
INSERT INTO devices (name, type, district_id) VALUES ('smoke-sensor', 'sensor', 8);
INSERT INTO devices (name, type, district_id) VALUES ('interior-cam', 'cctv', 8);
INSERT INTO devices (name, type, district_id) VALUES ('intersection-cam', 'cctv', 8);

# Epps, Athens
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 9);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 9);
INSERT INTO devices (name, type, district_id) VALUES ('security-cam', 'cctv', 9);
INSERT INTO devices (name, type, district_id) VALUES ('temperature-sensor', 'sensor', 9);
INSERT INTO devices (name, type, district_id) VALUES ('store-cam', 'cctv', 9);
INSERT INTO devices (name, type, district_id) VALUES ('wireless-cam', 'cctv', 9);
INSERT INTO devices (name, type, district_id) VALUES ('security-cam', 'cctv', 9);
INSERT INTO devices (name, type, district_id) VALUES ('spy-cam', 'cctv', 9);
INSERT INTO devices (name, type, district_id) VALUES ('smoke-sensor', 'sensor', 9);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 9);
INSERT INTO devices (name, type, district_id) VALUES ('security-cam', 'cctv', 9);

# Beechwood, Athens
INSERT INTO devices (name, type, district_id) VALUES ('security-cam', 'cctv', 10);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 10);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 10);
INSERT INTO devices (name, type, district_id) VALUES ('security-cam', 'cctv', 10);
INSERT INTO devices (name, type, district_id) VALUES ('road-cam', 'cctv', 10);
INSERT INTO devices (name, type, district_id) VALUES ('wireless-cam', 'cctv', 10);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 10);
INSERT INTO devices (name, type, district_id) VALUES ('smoke-sensor', 'sensor', 10);
INSERT INTO devices (name, type, district_id) VALUES ('temperature-sensor', 'sensor', 10);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 10);

# Downtown, Augusta
INSERT INTO devices (name, type, district_id) VALUES ('temperature-sensor', 'sensor', 11);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 11);
INSERT INTO devices (name, type, district_id) VALUES ('security-cam', 'cctv', 11);
INSERT INTO devices (name, type, district_id) VALUES ('security-cam', 'cctv', 11);
INSERT INTO devices (name, type, district_id) VALUES ('interior-cam', 'cctv', 11);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 11);
INSERT INTO devices (name, type, district_id) VALUES ('smoke-sensor', 'sensor', 11);
INSERT INTO devices (name, type, district_id) VALUES ('security-cam', 'cctv', 11);
INSERT INTO devices (name, type, district_id) VALUES ('road-cam', 'cctv', 11);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 11);

# West End, Augusta
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 12);
INSERT INTO devices (name, type, district_id) VALUES ('interior-cam', 'cctv', 12);
INSERT INTO devices (name, type, district_id) VALUES ('hallway-cam', 'cctv', 12);
INSERT INTO devices (name, type, district_id) VALUES ('pressure-sensor', 'sensor', 12);
INSERT INTO devices (name, type, district_id) VALUES ('security-cam', 'cctv', 12);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 12);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 12);
INSERT INTO devices (name, type, district_id) VALUES ('smoke-sensor', 'sensor', 12);
INSERT INTO devices (name, type, district_id) VALUES ('temperature-sensor', 'sensor', 12);
INSERT INTO devices (name, type, district_id) VALUES ('wireless-cam', 'cctv', 12);
INSERT INTO devices (name, type, district_id) VALUES ('hidden-cam', 'cctv', 12);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 12);

# Forest Hills, Augusta
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 13);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 13);
INSERT INTO devices (name, type, district_id) VALUES ('wireless-cam', 'cctv', 13);
INSERT INTO devices (name, type, district_id) VALUES ('temperature-sensor', 'sensor', 13);
INSERT INTO devices (name, type, district_id) VALUES ('hallway-cam', 'cctv', 13);
INSERT INTO devices (name, type, district_id) VALUES ('security-cam', 'cctv', 13);
INSERT INTO devices (name, type, district_id) VALUES ('road-cam', 'cctv', 13);
INSERT INTO devices (name, type, district_id) VALUES ('smoke-sensor', 'sensor', 13);
INSERT INTO devices (name, type, district_id) VALUES ('security-cam', 'cctv', 13);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 13);
INSERT INTO devices (name, type, district_id) VALUES ('temperature-sensor', 'sensor', 13);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 13);

INSERT INTO tickets (device_id, start_time, priority) VALUES (1, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (7, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (15, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (20, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (22, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (39, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (41, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (47, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (51, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (57, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (61, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (79, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (83, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (90, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (95, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (96, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (97, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (101, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (110, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (113, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (115, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (119, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (121, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (127, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (131, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (138, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (143, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (26, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (33, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (36, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (4, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (12, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (19, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (26, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (2, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (3, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);
INSERT INTO tickets (device_id, start_time, priority) VALUES (5, CURRENT_TIMESTAMP - INTERVAL FLOOR(RAND() * 60 * 24 * 60 * 60) SECOND, FLOOR(RAND() * 3) + 1);








##################### TRIGGERS FROM THIS POINT ON #######################

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

SELECT * from cities;

INSERT INTO districts (city_id, name, num_devices) VALUES (1, 'Test_District_1', 100);
INSERT INTO districts (city_id, name, num_devices) VALUES (2, 'Test_District_2', 200);
INSERT INTO districts (city_id, name, num_devices) VALUES (3, 'Test_District_3', 300);



#######################################################

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

SELECT * FROM districts;

INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 14);
INSERT INTO devices (name, type, district_id) VALUES ('temperature-sensor', 'sensor', 15);
INSERT INTO devices (name, type, district_id) VALUES ('traffic', 'traffic_light', 16);



###############################################

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

SELECT * FROM tickets;
SELECT * FROM devices;

UPDATE devices 
SET is_active = FALSE 
WHERE id = 144;

UPDATE devices
SET is_active = FALSE
WHERE id = 145;

UPDATE devices
SET is_active = FALSE
WHERE id = 146;



###############################################

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

SELECT * FROM tickets;

DELETE FROM tickets 
WHERE device_id = 144;

DELETE FROM tickets 
WHERE device_id = 145;

DELETE FROM tickets 
WHERE device_id = 146;

SELECT * FROM devices;
