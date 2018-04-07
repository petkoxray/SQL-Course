create table projects(
    id int primary key auto_increment,
    client_id int,
    project_lead_id int 
);

create table employees(
    id int primary key auto_increment,
    first_name varchar(30),
    last_name varchar(30),
    project_id int
);

alter table projects
add constraint fk_project_lead_id 
foreign key(project_lead_id) references employees(id);

alter table employees
add constraint fk_project_id 
foreign key(project_id) references projects(id);

create table clients(
    id int primary key auto_increment,
    client_name varchar(100),
    project_id int,
    constraint fk_client_project_id
    foreign key(project_id) references projects(id)
);

alter table projects
add constraint fk_client_id 
foreign key(client_id) references clients(id);

