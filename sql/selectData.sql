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



