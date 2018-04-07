CREATE TABLE mountains(
	id int primary key,
	name varchar(30)
);

CREATE TABLE peaks(
	id int primary key,
	name varchar(30),
	mountain_id int not null,
	constraint fk_mountain_id 
	foreign key(mountain_id) references mountains(id)
);
