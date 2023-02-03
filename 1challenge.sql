- Q: Write a query that returns all player details 
-- in the database. This list of players should be 
-- sorted in an ascending order of player names
-- and their position.

-- BONUS: Attach a serial number to this list that
-- correlates with the order of arrangement.

SELECT ROW_NUMBER() OVER
(ORDER BY player_name ASC , position ASC) serial_number ,
player_name ,
position 
FROM WC_PLAYERS ;
