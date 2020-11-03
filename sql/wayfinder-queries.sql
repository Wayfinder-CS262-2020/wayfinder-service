-- Selects all rooms in the Science Building
SELECT roomnumber FROM Building, Room
    WHERE name = 'SB'
    AND Building.name = Room.containingBuilding
    ;

-- Get coordinates of a building
SELECT coordinatesX, coordinatesY 
FROM Building
    WHERE building.name = 'SB'
    ;

--Get coordinates of a specific room
--  Note: floor number is first digit of room number
SELECT interiorCoordinatesX, interiorCoordinatesY
FROM Room, Building
    -- roomNumber and containingBuilding will be user-input
    WHERE roomNumber = '259'
    AND containingBuilding = 'NH'
    AND Building.name = Room.containingBuilding
    ;