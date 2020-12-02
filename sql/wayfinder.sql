DROP TABLE IF EXISTS Building;
DROP TABLE IF EXISTS Room;

--Schema 

CREATE TABLE Building (
    name varchar(100),
    -- X and Y coords refer to the specific map coordinates
    lat float,
    lon float
    coordinatesX float,
    coordinatesY float
    -- entranceCoordinatesX float,
    -- entranceCoordinatesY float, 
    --For finding different entrances
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

------------------------------------------------North Hall Rooms------------------------------------------------
INSERT INTO Building VALUES ('NH', 42.931609, -85.588781);
--
INSERT INTO ROOM VALUES ('NH', '000', 'Test', 0, 0, 0);


---------------------------------------------Science Building Rooms---------------------------------------------
INSERT INTO Building VALUES ('SB', 42.931017, -85.588925); 




--Basement
INSERT INTO ROOM VALUES ('SB', '001', 'Civil Engineering Lab', 0, 3382, 2083);
INSERT INTO ROOM VALUES ('SB', '002', 'Research Lab', 0, 3328, 2556);
INSERT INTO ROOM VALUES ('SB', '002A', 'Research Lab', 0, 3613, 2482);
INSERT INTO ROOM VALUES ('SB', '003', 'Engineering Instrumentation', 0, 3058, 2490);
INSERT INTO ROOM VALUES ('SB', '010', 'Lecture Hall', 0, 2712, 2008);
INSERT INTO ROOM VALUES ('SB', '034', 'Research Lab', 0, 2103, 2238);
INSERT INTO ROOM VALUES ('SB', '035', 'Physics Research', 0, 1857,2713 );
INSERT INTO ROOM VALUES ('SB', '046', 'Chemical Engineering', 0, 1491, 2001);
INSERT INTO ROOM VALUES ('SB', '046A', 'NMR', 0, 1206, 1656);
INSERT INTO ROOM VALUES ('SB', '047', 'Thermo Fluids', 0, 1585, 1293);
INSERT INTO ROOM VALUES ('SB', '062', 'Research Lab', 0, 1860, 939);
INSERT INTO ROOM VALUES ('SB', '064', 'Research Lab', 0, 1947, 1258);
INSERT INTO ROOM VALUES ('SB', '076', 'Electronics', 0, 2508, 943);
INSERT INTO ROOM VALUES ('SB', '081', 'Dat./COMM', 0, 3024, 1098);
INSERT INTO ROOM VALUES ('SB', '082', 'Computer Lab', 0, 2709, 1309);

--1st floor
INSERT INTO ROOM VALUES ('SB', '101', 'Classroom', 1, 3344, 2112);
INSERT INTO ROOM VALUES ('SB', '102', 'Classroom', 1, 3488, 2562);
INSERT INTO ROOM VALUES ('SB', '103', 'Classroom', 1, 3064, 2596);
INSERT INTO ROOM VALUES ('SB', '110', 'Classroom', 1, 2834, 1636);
INSERT INTO ROOM VALUES ('SB', '113', 'Lab', 1, 2232, 1936);
INSERT INTO ROOM VALUES ('SB', '120', 'Computer Lab', 1, 2534, 2274);
INSERT INTO ROOM VALUES ('SB', '128', 'Computer Lab', 1, 2034, 2356);
INSERT INTO ROOM VALUES ('SB', '132', 'Engineering Research', 1, 2086, 2770);
INSERT INTO ROOM VALUES ('SB', '149', 'Physics', 1, 1314, 1468);
INSERT INTO ROOM VALUES ('SB', '176', 'Physics', 1, 2328, 920);
INSERT INTO ROOM VALUES ('SB', '177', 'Physics', 1, 2610, 1088);

--2nd Floor
INSERT INTO ROOM VALUES ('SB', '201', 'Classroom', 2, 3312, 1940);
INSERT INTO ROOM VALUES ('SB', '202', 'Classroom', 2, 3448, 2596);
INSERT INTO ROOM VALUES ('SB', '203', 'Classroom', 2, 3068, 2508);
INSERT INTO ROOM VALUES ('SB', '210', 'Microbiology Genetics', 2, 2800, 1856);
INSERT INTO ROOM VALUES ('SB', '220', 'Nursing Skills Laboratory', 2, 2612, 2284);
INSERT INTO ROOM VALUES ('SB', '236', 'Nursing Laboratory Skills', 2, 1876, 2356);
INSERT INTO ROOM VALUES ('SB', '237', 'Elementary Science and Astronomy', 2, 1608, 2228);
INSERT INTO ROOM VALUES ('SB', '255', 'Elementary Education Science Classroom', 2, 1444, 1412);
INSERT INTO ROOM VALUES ('SB', '256', 'Physiology', 2, 1632, 1268);
INSERT INTO ROOM VALUES ('SB', '273', 'Lab', 2, 2200, 520);
INSERT INTO ROOM VALUES ('SB', '275', 'Biotech Intrumentation', 2, 2428, 656);
INSERT INTO ROOM VALUES ('SB', '276', 'General Biology', 2, 2308, 956);
INSERT INTO ROOM VALUES ('SB', '277', 'Introductory Biology', 2, 2584, 1092);
INSERT INTO ROOM VALUES ('SB', '283', 'Research', 2, 3024, 1208);
INSERT INTO ROOM VALUES ('SB', '284', 'Research', 2, 3164, 1300);

--3rd Floor
INSERT INTO ROOM VALUES ('SB', '301', 'Classroom', 3, 3282, 1968);
INSERT INTO ROOM VALUES ('SB', '302', 'Classroom', 3, 3441, 2616);
INSERT INTO ROOM VALUES ('SB', '303', 'Classroom', 3, 3066, 2496);
INSERT INTO ROOM VALUES ('SB', '310', 'Psychology Resource & Sem.', 3, 2763, 1929);
INSERT INTO ROOM VALUES ('SB', '311', '', 3, 2583, 1797);
INSERT INTO ROOM VALUES ('SB', '312', '', 3, 2448, 2034);
INSERT INTO ROOM VALUES ('SB', '313', '', 3, 2502, 1746);
INSERT INTO ROOM VALUES ('SB', '314', '', 3, 2364, 1986);
INSERT INTO ROOM VALUES ('SB', '316', '', 3, 2286, 1953);
INSERT INTO ROOM VALUES ('SB', '319', 'Computer Research', 3, 2376, 1659);
INSERT INTO ROOM VALUES ('SB', '322', 'Data Comm.', 3, 1917, 1932);
INSERT INTO ROOM VALUES ('SB', '334', 'Classroom', 3, 2181, 2385);
INSERT INTO ROOM VALUES ('SB', '336', 'Classroom', 3, 1851, 2388);
INSERT INTO ROOM VALUES ('SB', '337', 'Computer Hardware Lab', 3, 1584, 2265);
INSERT INTO ROOM VALUES ('SB', '343', 'Psychology Lab Classroom', 3, 1446, 1917);
INSERT INTO ROOM VALUES ('SB', '352', 'Psychology Computer Lab', 3, 1113, 1176);
INSERT INTO ROOM VALUES ('SB', '353', '', 3, 1431, 1347);
INSERT INTO ROOM VALUES ('SB', '353A', 'Research', 3, 1284, 1533);
INSERT INTO ROOM VALUES ('SB', '354', 'Unix Classroom', 3, 1773, 1158);
INSERT INTO ROOM VALUES ('SB', '372', 'PC Classroom', 3, 2403, 1179);
INSERT INTO ROOM VALUES ('SB', '381', 'Lab', 3, 3021, 1044);
INSERT INTO ROOM VALUES ('SB', '382', 'Classroom', 3, 2736, 1401);
INSERT INTO ROOM VALUES ('SB', '383', 'Research', 3, 3072, 1191);

--4th Floor
INSERT INTO ROOM VALUES ('SB', '400', 'Observatory', 4, 3117, 2070);




---------------------------------------------Covenant Fine Arts Center---------------------------------------------


--1st floor
INSERT INTO ROOM VALUES ('CFAC', '100', 'Auditorium', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '107', 'Recital Hall', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '115', 'Swets Choral Hall', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '125', 'Multi-Purpose Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '135', 'Instrumental Hall', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '151', 'Practice Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '152', 'Practice Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '153', 'Practice Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '154', 'Practice Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '155', 'Practice Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '156', 'Practice Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '157', 'Practice Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '158', 'Practice Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '159', 'Practice Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '160', 'Practice Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '161', 'Practice Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '161', 'Practice Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '163', 'Practice Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '166', 'Practice Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '169', 'Practice Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '171', 'Practice Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '173', 'Practice Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '175', 'Practice Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '168', 'Choral Studio', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '170', 'Choral Studio', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '174', 'Choral Studio', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '176', 'Choral Studio', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '177', 'String Studio', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '178', 'Voice Teaching Studio', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '179', 'Voice Studio', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '181', 'Orchestra Studio', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '183', 'Band Studio', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '185', 'Piano Studio', 0, 0, 0);

--2nd floor
INSERT INTO ROOM VALUES ('CFAC', '222', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '224', 'Music Electronics Lab', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '227', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '229', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '230', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '251', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '252', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '255', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '263', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '264', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '265', 'Classroom', 0, 0, 0);


---------------------------------------------Hiemenga Hall---------------------------------------------

--2nd Floor
INSERT INTO ROOM VALUES ('HH', '211', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('HH', '213', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('HH', '221', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('HH', '225', 'Instruct Graphics', 0, 0, 0);
INSERT INTO ROOM VALUES ('HH', '226', 'Audio Visual', 0, 0, 0);
INSERT INTO ROOM VALUES ('HH', '227', 'Prod', 0, 0, 0);
INSERT INTO ROOM VALUES ('HH', '228', 'Video Prod', 0, 0, 0);
INSERT INTO ROOM VALUES ('HH', '231', 'Workshop', 0, 0, 0);
INSERT INTO ROOM VALUES ('HH', '232', 'TV Studio/Classroom', 0, 0, 0);

--3rd Floor
INSERT INTO ROOM VALUES ('HH', '314', 'Seminar', 0, 0, 0);
INSERT INTO ROOM VALUES ('HH', '315', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('HH', '316', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('HH', '317', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('HH', '320', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('HH', '321', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('HH', '323', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('HH', '331', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('HH', '333', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('HH', '334', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('HH', '335', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('HH', '336', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('HH', '337', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('HH', '339', 'Classroom', 0, 0, 0);

--4th Floor
INSERT INTO ROOM VALUES ('HH', '428', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('HH', '429', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('HH', '430', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('HH', '429', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('HH', '431', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('HH', '432', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('HH', '462', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('HH', '463', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('HH', '466', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('HH', '467', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('HH', '477', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('HH', '494', 'Lab', 0, 0, 0);

---------------------------------------------Devries Hall---------------------------------------------

--Basement
INSERT INTO ROOM VALUES ('DH', '023', 'Demonstration Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '028', 'Isolation Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '042', 'Isolation', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '034', 'Procedure', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '034A', 'Holding', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '047', 'Cubicle Holding', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '048', 'Procedure', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '048A', 'Procedure', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '051', 'Cubicle Holding', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '052', 'Surgical Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '053', 'Rodent Surgical Suite', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '053', 'Holding', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '054', 'Scrub', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '057', 'Pen Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '058', 'Surgical Prep', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '059', 'Flexible Holding', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '060', 'Recovery', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '061', 'Large Holding', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '062', 'Surgical Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '063', 'Large Holding', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '065', 'Large Holding', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '066', 'Equipment Wash', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '067', '', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '067A', '', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '074', 'Decontamination Room', 0, 0, 0);

--1st Floor
INSERT INTO ROOM VALUES ('DH', '106', 'Anatomy', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '112', 'Botany', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '112A', 'Growth Chamber', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '112B', 'Propigation Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '117', 'Greenhouse', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '120', 'Biology Museum', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '117A', 'Potting Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '124', 'Field Biology', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '132', 'Zoology', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '137', 'Aquarium Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '150', 'Research/Preparation', 0, 0, 0);

--2nd Floor
INSERT INTO ROOM VALUES ('DH', '206', 'Cell Biology Imunology', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '208', 'Cell Culture', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '212', 'Biology Research', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '216', 'Biology Research', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '218', 'Chemistry Research', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '220', 'Chemistry Research', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '222', 'Molecular Biology', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '224', 'Biochemistry', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '232', 'General Chemistry', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '235', 'Computation Chemistry', 0, 0, 0);

--3rd Floor
INSERT INTO ROOM VALUES ('DH', '306', 'Quantitative/General Chemistry', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '311', 'Research', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '312', 'Physical Chemistry', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '313', 'Research', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '318', 'Research', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '320', 'Environmental Science', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '323', 'Research', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '324', 'Advanced Synthesis', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '325', 'Research', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '331', 'Research', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '332', 'Organic Chemistry', 0, 0, 0);

---------------------------------------------North Hall---------------------------------------------

--Basement
INSERT INTO ROOM VALUES ('NH', '050', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '051', 'Map Library', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '053', 'Classroom/Lab', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '054', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '056', 'Seminar', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '057', 'Classroom/Lab', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '059', 'Classroom/lab', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '061', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '063', 'Research', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '064', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '065', 'Lab', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '065A', 'Lab', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '067', 'G.I.S. Lab', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '073', 'Research', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '076', '', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '076A', '', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '076B', '', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '078', 'Lecture Hall', 0, 0, 0);

--1st Floor
INSERT INTO ROOM VALUES ('NH', '157', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '159', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '161', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '165', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '168', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '180', 'Computer Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '198', 'Classroom', 0, 0, 0);

--2nd Floor
INSERT INTO ROOM VALUES ('NH', '251', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '253', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '259', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '261', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '276', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '294', 'Seminar', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '295', 'Classroom', 0, 0, 0);





























