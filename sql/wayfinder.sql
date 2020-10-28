DROP TABLE IF EXISTS Building;
DROP TABLE IF EXISTS Room;

--Schema 

CREATE TABLE Building (
    name varchar(100),
    -- X and Y coords refer to the specific map coordinates
    coordinatesX float,
    coordinatesY float,
    -- entranceCoordinatesX float,
    -- entranceCoordinatesY float, --For finding different entrances
                                   --Might need an array?
);

CREATE TABLE Room(
    containingBuilding varchar(100), --REFERENCES Building(name),
    roomNumber integer,
    roomType varchar(100),
    -- Perhaps instead of having floorNumber we can grab the first digit of the room number
    floorNumber integer,
    -- X and Y coordinates refer to the specific indoor map coordinates
    interiorCoordinatesX float,
    interiorCoordinatesY float
);


GRANT SELECT ON Building TO PUBLIC;
GRANT SELECT ON Room TO PUBLIC;


-- Sample Data
INSERT INTO Building VALUES ('SB', 0, 0);
INSERT INTO Building VALUES ('NH', 15.23, 24.12);
INSERT INTO Building VALUES ('HH', 29.03, 19.82);
INSERT INTO ROOM VALUES ('SB', 300, 'Classroom', 3, 1, 1);
INSERT INTO ROOM VALUES ('SB', 010, 'Lecture Hall', 0, 1, 1);
INSERT INTO ROOM VALUES('NH', 259, 'Classroom', 2, 12, 23);


