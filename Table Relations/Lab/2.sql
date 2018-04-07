CREATE TABLE authors(
	id INT primary key,
	name VARCHAR(30)
);

CREATE TABLE books(
	id INT primary key,
	name VARCHAR(30),
	author_id INT NOT NULL,
	constraint fk_author_id 
	foreign key(author_id) references authors(id)
	ON DELETE cascade 
);
