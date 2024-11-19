UPDATE books SET "name" = 'Harry Potter e o Prisioneiro de Azkaban' WHERE id = 3
RETURNING *;

UPDATE books
SET "authorId" = 1
WHERE id IN (5, 6);

