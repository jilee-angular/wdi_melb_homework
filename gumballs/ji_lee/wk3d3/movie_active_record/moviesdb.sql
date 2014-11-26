DROP TABLE movies;

CREATE TABLE movies (
  id SERIAL4 PRIMARY KEY,
  Title VARCHAR(150),
  Year VARCHAR(10),
  Genre VARCHAR(100),
  Director VARCHAR(100),
  Poster VARCHAR(300)
);

insert into movies (title,year,genre,director,poster) values ('Goonies','1985','comedy','Richard Donner',' ');



