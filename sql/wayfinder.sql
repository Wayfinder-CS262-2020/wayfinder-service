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
    roomNumber varchar(4),
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
-- INSERT INTO Building VALUES ('SB', 0, 0);
-- INSERT INTO Building VALUES ('NH', 15.23, 24.12);
-- INSERT INTO Building VALUES ('HH', 29.03, 19.82);
-- INSERT INTO ROOM VALUES ('SB', '300', 'Classroom', 3, 1, 1);
-- INSERT INTO ROOM VALUES ('SB', '010', 'Lecture Hall', 0, 1, 1);
-- INSERT INTO ROOM VALUES('NH', '259', 'Classroom', 2, 12, 23);


---------------------------------------------Science Building Rooms---------------------------------------------
INSERT INTO Building VALUES ('SB', 0, 0); --Coordinates are currently a placeholder

--Basement
INSERT INTO ROOM VALUES ('SB', '001', 'Civil Engineering Lab', 0, 0, 0);
INSERT INTO ROOM VALUES ('SB', '002', 'Research Lab', 0, 0, 0);
INSERT INTO ROOM VALUES ('SB', '002A', 'Research Lab', 0, 0, 0);
INSERT INTO ROOM VALUES ('SB', '003', 'Engineering Instrumentation', 0, 0, 0);
INSERT INTO ROOM VALUES ('SB', '010', 'Lecture Hall', 0, 0, 0);
INSERT INTO ROOM VALUES ('SB', '034', 'Research Lab', 0, 0, 0);
INSERT INTO ROOM VALUES ('SB', '035', 'Physics Research', 0, 0, 0);
INSERT INTO ROOM VALUES ('SB', '046', 'Chemical Engineering', 0, 0, 0);
INSERT INTO ROOM VALUES ('SB', '046A', 'NMR', 0, 0, 0);
INSERT INTO ROOM VALUES ('SB', '047', 'Thermo Fluids', 0, 0, 0);
INSERT INTO ROOM VALUES ('SB', '062', 'Research Lab', 0, 0, 0);
INSERT INTO ROOM VALUES ('SB', '064', 'Research Lab', 0, 0, 0);
INSERT INTO ROOM VALUES ('SB', '076', 'Electronics', 0, 0, 0);
INSERT INTO ROOM VALUES ('SB', '081', 'Dat./COMM', 0, 0, 0);
INSERT INTO ROOM VALUES ('SB', '082', 'Computer Lab', 0, 0, 0);

--1st floor
INSERT INTO ROOM VALUES ('SB', '101', 'Classroom', 1, 0, 0);
INSERT INTO ROOM VALUES ('SB', '102', 'Classroom', 1, 0, 0);
INSERT INTO ROOM VALUES ('SB', '103', 'Classroom', 1, 0, 0);
INSERT INTO ROOM VALUES ('SB', '110', 'Classroom', 1, 0, 0);
INSERT INTO ROOM VALUES ('SB', '113', 'Lab', 1, 0, 0);
INSERT INTO ROOM VALUES ('SB', '120', 'Computer Lab', 1, 0, 0);
INSERT INTO ROOM VALUES ('SB', '128', 'Computer Lab', 1, 0, 0);
INSERT INTO ROOM VALUES ('SB', '132', 'Engineering Research', 1, 0, 0);
INSERT INTO ROOM VALUES ('SB', '149', 'Physics', 1, 0, 0);
INSERT INTO ROOM VALUES ('SB', '176', 'Physics', 1, 0, 0);
INSERT INTO ROOM VALUES ('SB', '177', 'Physics', 1, 0, 0);

--2nd Floor
INSERT INTO ROOM VALUES ('SB', '201', 'Classroom', 2, 0, 0);
INSERT INTO ROOM VALUES ('SB', '202', 'Classroom', 2, 0, 0);
INSERT INTO ROOM VALUES ('SB', '203', 'Classroom', 2, 0, 0);
INSERT INTO ROOM VALUES ('SB', '210', 'Microbiology Genetics', 2, 0, 0);
INSERT INTO ROOM VALUES ('SB', '220', 'Nursing Skills Laboratory', 2, 0, 0);
INSERT INTO ROOM VALUES ('SB', '236', 'Nursing Laboratory Skills', 2, 0, 0);
INSERT INTO ROOM VALUES ('SB', '237', 'Elementary Science and Astronomy', 2, 0, 0);
INSERT INTO ROOM VALUES ('SB', '255', 'Elementary Education Science Classroom', 2, 0, 0);
INSERT INTO ROOM VALUES ('SB', '256', 'Physiology', 2, 0, 0);
INSERT INTO ROOM VALUES ('SB', '273', 'Lab', 2, 0, 0);
INSERT INTO ROOM VALUES ('SB', '275', 'Biotech Intrumentation', 2, 0, 0);
INSERT INTO ROOM VALUES ('SB', '276', 'General Biology', 2, 0, 0);
INSERT INTO ROOM VALUES ('SB', '277', 'Introductory Biology', 2, 0, 0);
INSERT INTO ROOM VALUES ('SB', '283', 'Research', 2, 0, 0);
INSERT INTO ROOM VALUES ('SB', '284', 'Research', 2, 0, 0);

--3rd Floor
INSERT INTO ROOM VALUES ('SB', '301', 'Classroom', 3, 0, 0);
INSERT INTO ROOM VALUES ('SB', '302', 'Classroom', 3, 0, 0);
INSERT INTO ROOM VALUES ('SB', '303', 'Classroom', 3, 0, 0);
INSERT INTO ROOM VALUES ('SB', '310', 'Psychology Resource & Sem.', 3, 0, 0);
INSERT INTO ROOM VALUES ('SB', '311', '', 3, 0, 0);
INSERT INTO ROOM VALUES ('SB', '312', '', 3, 0, 0);
INSERT INTO ROOM VALUES ('SB', '313', '', 3, 0, 0);
INSERT INTO ROOM VALUES ('SB', '314', '', 3, 0, 0);
INSERT INTO ROOM VALUES ('SB', '316', '', 3, 0, 0);
INSERT INTO ROOM VALUES ('SB', '319', 'Computer Research', 3, 0, 0);
INSERT INTO ROOM VALUES ('SB', '322', 'Data Comm.', 3, 0, 0);
INSERT INTO ROOM VALUES ('SB', '334', 'Classroom', 3, 0, 0);
INSERT INTO ROOM VALUES ('SB', '336', 'Classroom', 3, 0, 0);
INSERT INTO ROOM VALUES ('SB', '337', 'Computer Hardware Lab', 3, 0, 0);
INSERT INTO ROOM VALUES ('SB', '343', 'Psychology Lab Classroom', 3, 0, 0);
INSERT INTO ROOM VALUES ('SB', '352', 'Psychology Computer Lab', 3, 0, 0);
INSERT INTO ROOM VALUES ('SB', '353', '', 3, 0, 0);
INSERT INTO ROOM VALUES ('SB', '353A', 'Research', 3, 0, 0);
INSERT INTO ROOM VALUES ('SB', '354', 'Unix Classroom', 3, 0, 0);
INSERT INTO ROOM VALUES ('SB', '372', 'PC Classroom', 3, 0, 0);
INSERT INTO ROOM VALUES ('SB', '381', 'Lab', 3, 0, 0);
INSERT INTO ROOM VALUES ('SB', '382', 'Classroom', 3, 0, 0);
INSERT INTO ROOM VALUES ('SB', '383', 'Research', 3, 0, 0);

--4th Floor
INSERT INTO ROOM VALUES ('SB', '400', 'Observatory', 4, 0, 0);
















