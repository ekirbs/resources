INSERT INTO immediateFam (first_name, last_name, age, present)
VALUES ("Dave", "Kirberger", 67, true),
       ("Gail", "Kirberger", 66, false),
       ("Eric", "Kirberger", 39, true),
       ("Lauren", "Kirberger", 37, false),
       ("Justin", "Kirberger", 31, false);

-- SELECT * FROM immediateFam; shows entire contents of named table
-- SELECT (first_name, age) FROM immediateFam;

-- INSERT INTO immediateFam (first_name, last_name, age, present)
--    VALUES ("Drew", "Gardener", 37, false),
--           ("Lucas", "Gardener", 1, false);

-- UPDATE immediateFam
-- SET name = "Mook"
-- WHERE age = 31;

-- DELETE FROM immediateFam
-- WHERE id IN (1, 3)