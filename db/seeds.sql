INSERT INTO immediateFam (id, first_name, last_name, age, present)
VALUES (01, "Doug", "King", 67, true),
       (02, "Greta", "King", 66, true),
       (03, "Ernie", "King", 39, true),
       (04, "Lana", "King", 37, false),
       (05, "Jamal", "King", 31, true);

INSERT INTO extendedFam (id, first_name, last_name, age, present)
VALUES (06, "Dan", "Fletcher", 37, false),
       (04, "Lana", "King", 37, false),
       (07, "Lenny", "Fletcher", 1, false);

-- SELECT * FROM immediateFam; shows entire contents of named table
-- SELECT (first_name, age) FROM immediateFam;

-- INSERT INTO immediateFam (first_name, last_name, age, present)
--    VALUES (06, "Dan", "Fletcher", 37, false),
--           (07, "Lenny", "Fletcher", 1, false);

-- UPDATE immediateFam
-- SET name = "Bishop"
-- WHERE id = 05;

-- DELETE FROM table
-- WHERE id IN (1, 3)