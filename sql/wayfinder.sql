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
INSERT INTO ROOM VALUES ('CFAC', '100', 'Auditorium', 1, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '107', 'Recital Hall', 1, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '115', 'Swets Choral Hall', 1, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '125', 'Multi-Purpose Room', 1, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '135', 'Instrumental Hall', 1, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '151', 'Practice Room', 1, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '152', 'Practice Room', 1, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '153', 'Practice Room', 1, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '154', 'Practice Room', 1, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '155', 'Practice Room', 1, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '156', 'Practice Room', 1, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '157', 'Practice Room', 1, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '158', 'Practice Room', 1, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '159', 'Practice Room', 1, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '160', 'Practice Room', 1, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '161', 'Practice Room', 1, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '161', 'Practice Room', 1, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '163', 'Practice Room', 1, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '166', 'Practice Room', 1, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '169', 'Practice Room', 1, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '171', 'Practice Room', 1, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '173', 'Practice Room', 1, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '175', 'Practice Room', 1, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '168', 'Choral Studio', 1, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '170', 'Choral Studio', 1, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '174', 'Choral Studio', 1, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '176', 'Choral Studio', 1, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '177', 'String Studio', 1, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '178', 'Voice Teaching Studio', 1, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '179', 'Voice Studio', 1, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '181', 'Orchestra Studio', 1, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '183', 'Band Studio', 1, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '185', 'Piano Studio', 1, 0, 0);

--2nd floor
INSERT INTO ROOM VALUES ('CFAC', '222', 'Classroom', 2, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '224', 'Music Electronics Lab', 2, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '227', 'Classroom', 2, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '229', 'Classroom', 2, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '230', 'Classroom', 2, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '251', 'Classroom', 2, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '252', 'Classroom', 2, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '255', 'Classroom', 2, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '263', 'Classroom', 2, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '264', 'Classroom', 2, 0, 0);
INSERT INTO ROOM VALUES ('CFAC', '265', 'Classroom', 2, 0, 0);


---------------------------------------------Hiemenga Hall---------------------------------------------

--2nd Floor
INSERT INTO ROOM VALUES ('HH', '211', 'Classroom', 2, 0, 0);
INSERT INTO ROOM VALUES ('HH', '213', 'Classroom', 2, 0, 0);
INSERT INTO ROOM VALUES ('HH', '221', 'Classroom', 2, 0, 0);
INSERT INTO ROOM VALUES ('HH', '225', 'Instruct Graphics', 2, 0, 0);
INSERT INTO ROOM VALUES ('HH', '226', 'Audio Visual', 2, 0, 0);
INSERT INTO ROOM VALUES ('HH', '227', 'Prod', 2, 0, 0);
INSERT INTO ROOM VALUES ('HH', '228', 'Video Prod', 2, 0, 0);
INSERT INTO ROOM VALUES ('HH', '231', 'Workshop', 2, 0, 0);
INSERT INTO ROOM VALUES ('HH', '232', 'TV Studio/Classroom', 2, 0, 0);

--3rd Floor
INSERT INTO ROOM VALUES ('HH', '314', 'Seminar', 3, 0, 0);
INSERT INTO ROOM VALUES ('HH', '315', 'Classroom', 3, 0, 0);
INSERT INTO ROOM VALUES ('HH', '316', 'Classroom', 3, 0, 0);
INSERT INTO ROOM VALUES ('HH', '317', 'Classroom', 3, 0, 0);
INSERT INTO ROOM VALUES ('HH', '320', 'Classroom', 3, 0, 0);
INSERT INTO ROOM VALUES ('HH', '321', 'Classroom', 3, 0, 0);
INSERT INTO ROOM VALUES ('HH', '323', 'Classroom', 3, 0, 0);
INSERT INTO ROOM VALUES ('HH', '331', 'Classroom', 3, 0, 0);
INSERT INTO ROOM VALUES ('HH', '333', 'Classroom', 3, 0, 0);
INSERT INTO ROOM VALUES ('HH', '334', 'Classroom', 3, 0, 0);
INSERT INTO ROOM VALUES ('HH', '335', 'Classroom', 3, 0, 0);
INSERT INTO ROOM VALUES ('HH', '336', 'Classroom', 3, 0, 0);
INSERT INTO ROOM VALUES ('HH', '337', 'Classroom', 3, 0, 0);
INSERT INTO ROOM VALUES ('HH', '339', 'Classroom', 3, 0, 0);

--4th Floor
INSERT INTO ROOM VALUES ('HH', '428', 'Classroom', 4, 0, 0);
INSERT INTO ROOM VALUES ('HH', '429', 'Classroom', 4, 0, 0);
INSERT INTO ROOM VALUES ('HH', '430', 'Classroom', 4, 0, 0);
INSERT INTO ROOM VALUES ('HH', '429', 'Classroom', 4, 0, 0);
INSERT INTO ROOM VALUES ('HH', '431', 'Classroom', 4, 0, 0);
INSERT INTO ROOM VALUES ('HH', '432', 'Classroom', 4, 0, 0);
INSERT INTO ROOM VALUES ('HH', '462', 'Classroom', 4, 0, 0);
INSERT INTO ROOM VALUES ('HH', '463', 'Classroom', 4, 0, 0);
INSERT INTO ROOM VALUES ('HH', '466', 'Classroom', 4, 0, 0);
INSERT INTO ROOM VALUES ('HH', '467', 'Classroom', 4, 0, 0);
INSERT INTO ROOM VALUES ('HH', '477', 'Classroom', 4, 0, 0);
INSERT INTO ROOM VALUES ('HH', '494', 'Lab', 4, 0, 0);

---------------------------------------------Devries Hall---------------------------------------------

--Basement
INSERT INTO ROOM VALUES ('DH', '004', 'Elevator Equipment', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '011', 'Lounge', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '012', 'IDF/Elec', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '013', 'Admin Office', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '013A', 'Conference Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '013B', 'Office', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '013C', 'Storage', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '014', 'Men', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '014A', '', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '018', 'Restroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '020', 'Women', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '020A', '', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '023', 'Demonstration Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '024', 'Office', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '026', 'Office', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '028', 'Isolation Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '029', 'Storage', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '030', 'Storage', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '031', 'Storage', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '032', 'Storage', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '033', 'Iso.', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '034', 'Procedure', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '034A', 'Holding', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '038', 'Storage', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '040', 'Mechanical', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '042', 'Isolation', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '043', 'J.C.', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '044', 'Storage', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '045A', 'Mechanical', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '047', 'Cubicle Holding', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '048', 'Procedure', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '048A', 'Procedure', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '051', 'Cubicle Holding', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '052', 'Surgical Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '053', 'Rodent Surgical Suite', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '053', 'Holding', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '054', 'Scrub', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '056', 'J.C.', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '057', 'Pen Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '058', 'Surgical Prep', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '059', 'Flexible Holding', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '060', 'Recovery', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '061', 'Large Holding', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '062', 'Surgical Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '063', 'Large Holding', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '064', 'Scrub', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '065', 'Large Holding', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '066', 'Equipment Wash', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '067', '', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '067A', '', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '068', 'Transfer', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '071', 'Clean Storage', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '073', 'Feed and Bed Storage', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '074', 'Decontamination Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '075', 'Hub', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '075A', 'Restroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '075B', '', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '079', 'Gas Manifold', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '081', 'Generator/Trash', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '083', 'Secured Receiving', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '085A', 'Mechanical Crawl Space', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '087', 'Generator/Trash', 0, 0, 0);
INSERT INTO ROOM VALUES ('DH', '087A', '', 0, 0, 0);

--1st Floor
INSERT INTO ROOM VALUES ('DH', '100', 'Department Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('DH', '101', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('DH', '102', 'IDL/Elec Room', 1, 0, 0);
INSERT INTO ROOM VALUES ('DH', '103', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('DH', '105', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('DH', '106', 'Anatomy', 1, 0, 0);
INSERT INTO ROOM VALUES ('DH', '107', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('DH', '109', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('DH', '111', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('DH', '112', 'Botany', 1, 0, 0);
INSERT INTO ROOM VALUES ('DH', '113', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('DH', '112A', 'Growth Chamber', 1, 0, 0);
INSERT INTO ROOM VALUES ('DH', '112B', 'Propigation Room', 1, 0, 0);
INSERT INTO ROOM VALUES ('DH', '115', 'Conference', 1, 0, 0);
INSERT INTO ROOM VALUES ('DH', '117', 'Greenhouse', 1, 0, 0);
INSERT INTO ROOM VALUES ('DH', '120', 'Biology Museum', 1, 0, 0);
INSERT INTO ROOM VALUES ('DH', '117A', 'Potting Room', 1, 0, 0);
INSERT INTO ROOM VALUES ('DH', '123', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('DH', '124', 'Field Biology', 1, 0, 0);
INSERT INTO ROOM VALUES ('DH', '125', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('DH', '127', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('DH', '129', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('DH', '131', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('DH', '132', 'Zoology', 1, 0, 0);
INSERT INTO ROOM VALUES ('DH', '133', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('DH', '135', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('DH', '137', 'Aquarium Room', 1, 0, 0);
INSERT INTO ROOM VALUES ('DH', '138', 'Men', 1, 0, 0);
INSERT INTO ROOM VALUES ('DH', '140', 'Women', 1, 0, 0);
INSERT INTO ROOM VALUES ('DH', '142', 'Research/Preparation', 1, 0, 0);
INSERT INTO ROOM VALUES ('DH', '145', 'Storage', 1, 0, 0);
INSERT INTO ROOM VALUES ('DH', '150', 'Research/Preparation', 1, 0, 0);

--2nd Floor
INSERT INTO ROOM VALUES ('DH', '202', 'Idf/Elec.', 2, 0, 0);
INSERT INTO ROOM VALUES ('DH', '203', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('DH', '204', '', 2, 0, 0);
INSERT INTO ROOM VALUES ('DH', '205', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('DH', '206', 'Cell Biology Imunology', 2, 0, 0);
INSERT INTO ROOM VALUES ('DH', '207', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('DH', '208', 'Cell Culture', 2, 0, 0);
INSERT INTO ROOM VALUES ('DH', '209', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('DH', '211', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('DH', '212', 'Biology Research', 2, 0, 0);
INSERT INTO ROOM VALUES ('DH', '213', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('DH', '215', 'Research', 2, 0, 0);
INSERT INTO ROOM VALUES ('DH', '216', 'Biology Research', 2, 0, 0);
INSERT INTO ROOM VALUES ('DH', '218', 'Chemistry Research', 2, 0, 0);
INSERT INTO ROOM VALUES ('DH', '220', 'Chemistry Research', 2, 0, 0);
INSERT INTO ROOM VALUES ('DH', '221', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('DH', '222', 'Molecular Biology', 2, 0, 0);
INSERT INTO ROOM VALUES ('DH', '223', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('DH', '224', 'Biochemistry', 2, 0, 0);
INSERT INTO ROOM VALUES ('DH', '225', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('DH', '227', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('DH', '229', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('DH', '231', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('DH', '232', 'General Chemistry', 2, 0, 0);
INSERT INTO ROOM VALUES ('DH', '223', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('DH', '235', 'Computation Chemistry', 2, 0, 0);
INSERT INTO ROOM VALUES ('DH', '235A', '', 2, 0, 0);
INSERT INTO ROOM VALUES ('DH', '242', 'Cust.', 2, 0, 0);
INSERT INTO ROOM VALUES ('DH', '245', 'Storage', 2, 0, 0);

--3rd Floor
INSERT INTO ROOM VALUES ('DH', '300', 'Chemistry Stock', 3, 0, 0);
INSERT INTO ROOM VALUES ('DH', '300A', 'Office', 3, 0, 0);
INSERT INTO ROOM VALUES ('DH', '301', 'Office', 3, 0, 0);
INSERT INTO ROOM VALUES ('DH', '303', 'Office', 3, 0, 0);
INSERT INTO ROOM VALUES ('DH', '305', 'Office', 3, 0, 0);
INSERT INTO ROOM VALUES ('DH', '307', 'Office', 3, 0, 0);
INSERT INTO ROOM VALUES ('DH', '302', 'IDF Elec.', 3, 0, 0);
INSERT INTO ROOM VALUES ('DH', '306', 'Quantitative/General Chemistry', 3, 0, 0);
INSERT INTO ROOM VALUES ('DH', '311', 'Research', 3, 0, 0);
INSERT INTO ROOM VALUES ('DH', '312', 'Physical Chemistry', 3, 0, 0);
INSERT INTO ROOM VALUES ('DH', '313', 'Research', 3, 0, 0);
INSERT INTO ROOM VALUES ('DH', '318', 'Research', 3, 0, 0);
INSERT INTO ROOM VALUES ('DH', '320', 'Environmental Science', 3, 0, 0);
INSERT INTO ROOM VALUES ('DH', '323', 'Research', 3, 0, 0);
INSERT INTO ROOM VALUES ('DH', '324', 'Advanced Synthesis', 3, 0, 0);
INSERT INTO ROOM VALUES ('DH', '325', 'Research', 3, 0, 0);
INSERT INTO ROOM VALUES ('DH', '331', 'Research', 3, 0, 0);
INSERT INTO ROOM VALUES ('DH', '332', 'Organic Chemistry', 3, 0, 0);
INSERT INTO ROOM VALUES ('DH', '333', 'Office', 3, 0, 0);
INSERT INTO ROOM VALUES ('DH', '335', 'Office', 3, 0, 0);
INSERT INTO ROOM VALUES ('DH', '337', 'Storage', 3, 0, 0);
INSERT INTO ROOM VALUES ('DH', '338', 'Men', 3, 0, 0);
INSERT INTO ROOM VALUES ('DH', '340', 'Women', 3, 0, 0);
INSERT INTO ROOM VALUES ('DH', '342', 'Cust.', 3, 0, 0);
INSERT INTO ROOM VALUES ('DH', '345', 'Storage', 3, 0, 0);

---------------------------------------------North Hall---------------------------------------------

--Basement
INSERT INTO ROOM VALUES ('NH', '048', 'Office', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '050', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '051', 'Map Library', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '052A', 'Office', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '052B', 'Office', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '052C', 'Office', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '053', 'Classroom/Lab', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '054', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '055', 'Mechanical', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '056', 'Seminar', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '057', 'Classroom/Lab', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '058', 'Office', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '059', 'Classroom/lab', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '060', 'Lounge', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '061', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '063', 'Research', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '064', 'Classroom', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '065', 'Lab', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '065A', 'Lab', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '067', 'G.I.S. Lab', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '070', 'Mech. Room', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '071', 'Office', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '072', 'Women', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '074', 'Men', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '073', 'Research', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '075', 'Office', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '076', '', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '076A', '', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '076B', '', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '077', 'Office', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '079', 'Office', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '078', 'Lecture Hall', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '081', 'Office', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '083', 'Office', 0, 0, 0);
INSERT INTO ROOM VALUES ('NH', '085', 'Office', 0, 0, 0);

--1st Floor
INSERT INTO ROOM VALUES ('NH', '156', 'Department Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '157', 'Classroom', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '158', 'Workroom', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '159', 'Classroom', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '160', 'Conference', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '161', 'Classroom', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '162', 'Dice Museum', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '163', 'Conference', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '164', 'Conference', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '165', 'Classroom', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '167', 'Department Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '168', 'Classroom', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '170', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '171', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '172', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '173', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '175', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '176', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '177', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '178', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '179', 'Women', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '180', 'Computer Room', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '181', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '182', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '183', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '184', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '187', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '188', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '189', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '190', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '191', 'Storage', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '191A', 'Conference', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '192', 'Men', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '192A', 'Mechanical', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '193', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '194', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '195', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '196', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '197', 'Office', 1, 0, 0);
INSERT INTO ROOM VALUES ('NH', '198', 'Classroom', 1, 0, 0);

--2nd Floor
INSERT INTO ROOM VALUES ('NH', '251', 'Classroom', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '252', 'Lounge', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '253', 'Classroom', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '254', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '255', 'Mechanical', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '256', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '258', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '259', 'Classroom', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '260', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '261', 'Classroom', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '262', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '264', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '265', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '266', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '267', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '268', 'Conference', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '269', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '270', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '272', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '273', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '274', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '275', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '276', 'Classroom', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '278', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '279', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '280', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '281', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '284', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '284', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '285', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '286', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '287', 'Cust.', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '288A', 'Mechanical', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '289', 'Restroom', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '290', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '291', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '292', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '293', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '294', 'Seminar', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '295', 'Classroom', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '296', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '297', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '298', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '299', 'Office', 2, 0, 0);
INSERT INTO ROOM VALUES ('NH', '299A', 'Office', 2, 0, 0);




















