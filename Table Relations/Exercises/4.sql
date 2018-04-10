CREATE TABLE teachers(
    teacher_id INT,
    name VARCHAR(8) NOT NULL,
    manager_id INT,
    CONSTRAINT pk_teacher_id PRIMARY KEY (teacher_id),
    CONSTRAINT fk_manager_id FOREIGN KEY (manager_id)
    REFERENCES teachers(teacher_id)
);

INSERT INTO teachers
VALUES (101, 'John', NULL), (105, 'Mark', 101), (106, 'Greta', 101), 
(102, 'Maya', 106), (103, 'Silvia', 106), (104, 'Ted', 105);
