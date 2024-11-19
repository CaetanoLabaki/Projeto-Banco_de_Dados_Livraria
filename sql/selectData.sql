--Leitura de todos os livros.

SELECT * FROM books;
--Leitura de todos os livros da categoria "Fantasia".

SELECT * FROM books 
JOIN categories ON categories."name" = 'Fantasia';

--Leitura de todos os livros com suas respectivas categorias, renomeando colunas para evitar conflito entre chaves.

SELECT books."id" AS "booksId",
books."name" AS "bookName",
books."pages" AS "booksPages",
books."createdAt" AS "bookCreatedAt",
books."updatedAt" AS "bookUpdatedAt",
books."authorId",
categories."id" AS "categoryId",
categories."name" AS "categoryName"
FROM books
JOIN books_categories ON books."id" = books_categories."bookId"
JOIN categories ON categories."id" = books_categories."categoryId";

--Leitura do livro "Harry Potter" com as informações do autor, renomeando colunas para evitar conflito entre chaves.

SELECT 
    books."id" AS book_id,
    books."name" AS book_name,
    books."pages" AS book_pages,
    books."createdAt" AS book_created_at,
    books."updatedAt" AS book_updated_at,
    authors."id" AS author_id,
    authors."name" AS author_name,
    authors."bio" AS author_bio
FROM 
    books 
LEFT JOIN 
    authors 
ON 
    books."authorId" = authors."id"
WHERE 
    books."name" = 'Harry Potter';




