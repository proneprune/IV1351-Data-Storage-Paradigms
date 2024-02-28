CREATE TABLE contact_person (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 contact_details VARCHAR(300) NOT NULL
);

ALTER TABLE contact_person ADD CONSTRAINT PK_contact_person PRIMARY KEY (id);


CREATE TABLE ensemble (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 genre VARCHAR(50) NOT NULL,
 location VARCHAR(300) NOT NULL,
 minimum_amount_of_students VARCHAR(300) NOT NULL,
 maximum_amount_of_students VARCHAR(300) NOT NULL,
 time_slot TIME(300) NOT NULL
);

ALTER TABLE ensemble ADD CONSTRAINT PK_ensemble PRIMARY KEY (id);


CREATE TABLE groupl (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 minimum_amount_of_students VARCHAR(300) NOT NULL,
 time_slot TIME(300),
 skill VARCHAR(300) NOT NULL,
 instrument_type VARCHAR(300) NOT NULL,
 price VARCHAR(300) NOT NULL,
 location VARCHAR(300) NOT NULL
);

ALTER TABLE groupl ADD CONSTRAINT PK_groupl PRIMARY KEY (id);


CREATE TABLE individual (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 appointed_time TIME(300),
 skill VARCHAR(300) NOT NULL,
 instrument_type VARCHAR(300) NOT NULL,
 price VARCHAR(300) NOT NULL,
 location VARCHAR(300) NOT NULL
);

ALTER TABLE individual ADD CONSTRAINT PK_individual PRIMARY KEY (id);


CREATE TABLE instructor (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 number_of_lessons VARCHAR(300),
 teachable_ensembles VARCHAR(50),
 name VARCHAR(300) NOT NULL,
 person_number VARCHAR(12) NOT NULL,
 address VARCHAR(300) NOT NULL,
 contact_details VARCHAR(300) NOT NULL,
 teachable_instrument VARCHAR(256)
);

ALTER TABLE instructor ADD CONSTRAINT PK_instructor PRIMARY KEY (id);


CREATE TABLE instructor_ensemble (
 ensemble_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instructor_id INT GENERATED ALWAYS AS IDENTITY NOT NULL
);

ALTER TABLE instructor_ensemble ADD CONSTRAINT PK_instructor_ensemble PRIMARY KEY (ensemble_id,instructor_id);


CREATE TABLE instructor_groupl (
 group_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instructor_id INT GENERATED ALWAYS AS IDENTITY NOT NULL
);

ALTER TABLE instructor_groupl ADD CONSTRAINT PK_instructor_groupl PRIMARY KEY (group_id,instructor_id);


CREATE TABLE instructor_individual (
 individual_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instructor_id INT GENERATED ALWAYS AS IDENTITY NOT NULL
);

ALTER TABLE instructor_individual ADD CONSTRAINT PK_instructor_individual PRIMARY KEY (individual_id,instructor_id);


CREATE TABLE instrument (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 stock VARCHAR(100),
 instrument_type VARCHAR(300) NOT NULL,
 brand VARCHAR(300) NOT NULL
);

ALTER TABLE instrument ADD CONSTRAINT PK_instrument PRIMARY KEY (id);


CREATE TABLE sibling (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 person_number VARCHAR(12)
);

ALTER TABLE sibling ADD CONSTRAINT PK_sibling PRIMARY KEY (id);


CREATE TABLE student (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 name VARCHAR(300) NOT NULL,
 person_number VARCHAR(12) NOT NULL,
 address VARCHAR(300) NOT NULL,
 contact_details VARCHAR(300) NOT NULL
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (id);


CREATE TABLE student_contact_person (
 student_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 contact_person_id INT GENERATED ALWAYS AS IDENTITY NOT NULL
);

ALTER TABLE student_contact_person ADD CONSTRAINT PK_student_contact_person PRIMARY KEY (student_id,contact_person_id);


CREATE TABLE student_ensemble (
 ensemble_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 student_id INT GENERATED ALWAYS AS IDENTITY NOT NULL
);

ALTER TABLE student_ensemble ADD CONSTRAINT PK_student_ensemble PRIMARY KEY (ensemble_id,student_id);


CREATE TABLE student_groupl (
 group_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 student_id INT GENERATED ALWAYS AS IDENTITY NOT NULL
);

ALTER TABLE student_groupl ADD CONSTRAINT PK_student_groupl PRIMARY KEY (group_id,student_id);


CREATE TABLE student_individual (
 individual_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 student_id INT GENERATED ALWAYS AS IDENTITY NOT NULL
);

ALTER TABLE student_individual ADD CONSTRAINT PK_student_individual PRIMARY KEY (individual_id,student_id);


CREATE TABLE student_sibling (
 sibling_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 student_id INT GENERATED ALWAYS AS IDENTITY NOT NULL
);

ALTER TABLE student_sibling ADD CONSTRAINT PK_student_sibling PRIMARY KEY (sibling_id,student_id);


CREATE TABLE payment (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 total_amount VARCHAR(300),
 payment_date DATE,
 sibling_discount VARCHAR(4),
 student_id INT GENERATED ALWAYS AS IDENTITY,
 instructor_id INT GENERATED ALWAYS AS IDENTITY
);

ALTER TABLE payment ADD CONSTRAINT PK_payment PRIMARY KEY (id);


CREATE TABLE rental (
 id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 rental_start VARCHAR(300),
 rental_end VARCHAR(300),
 rental_fee VARCHAR(300),
 delivery VARCHAR(300),
 student_id INT GENERATED ALWAYS AS IDENTITY NOT NULL,
 instrument_id INT GENERATED ALWAYS AS IDENTITY NOT NULL
);

ALTER TABLE rental ADD CONSTRAINT PK_rental PRIMARY KEY (id);


ALTER TABLE instructor_ensemble ADD CONSTRAINT FK_instructor_ensemble_0 FOREIGN KEY (ensemble_id) REFERENCES ensemble (id);
ALTER TABLE instructor_ensemble ADD CONSTRAINT FK_instructor_ensemble_1 FOREIGN KEY (instructor_id) REFERENCES instructor (id);


ALTER TABLE instructor_groupl ADD CONSTRAINT FK_instructor_groupl_0 FOREIGN KEY (group_id) REFERENCES groupl (id);
ALTER TABLE instructor_groupl ADD CONSTRAINT FK_instructor_groupl_1 FOREIGN KEY (instructor_id) REFERENCES instructor (id);


ALTER TABLE instructor_individual ADD CONSTRAINT FK_instructor_individual_0 FOREIGN KEY (individual_id) REFERENCES individual (id);
ALTER TABLE instructor_individual ADD CONSTRAINT FK_instructor_individual_1 FOREIGN KEY (instructor_id) REFERENCES instructor (id);


ALTER TABLE student_contact_person ADD CONSTRAINT FK_student_contact_person_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE student_contact_person ADD CONSTRAINT FK_student_contact_person_1 FOREIGN KEY (contact_person_id) REFERENCES contact_person (id);


ALTER TABLE student_ensemble ADD CONSTRAINT FK_student_ensemble_0 FOREIGN KEY (ensemble_id) REFERENCES ensemble (id);
ALTER TABLE student_ensemble ADD CONSTRAINT FK_student_ensemble_1 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE student_groupl ADD CONSTRAINT FK_student_groupl_0 FOREIGN KEY (group_id) REFERENCES groupl (id);
ALTER TABLE student_groupl ADD CONSTRAINT FK_student_groupl_1 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE student_individual ADD CONSTRAINT FK_student_individual_0 FOREIGN KEY (individual_id) REFERENCES individual (id);
ALTER TABLE student_individual ADD CONSTRAINT FK_student_individual_1 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE student_sibling ADD CONSTRAINT FK_student_sibling_0 FOREIGN KEY (sibling_id) REFERENCES sibling (id);
ALTER TABLE student_sibling ADD CONSTRAINT FK_student_sibling_1 FOREIGN KEY (student_id) REFERENCES student (id);


ALTER TABLE payment ADD CONSTRAINT FK_payment_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE payment ADD CONSTRAINT FK_payment_1 FOREIGN KEY (instructor_id) REFERENCES instructor (id);


ALTER TABLE rental ADD CONSTRAINT FK_rental_0 FOREIGN KEY (student_id) REFERENCES student (id);
ALTER TABLE rental ADD CONSTRAINT FK_rental_1 FOREIGN KEY (instrument_id) REFERENCES instrument (id);


