 CREATE TYPE person_type AS OBJECT (
  2      person_id NUMBER,
  3      name VARCHAR2(50),
  4      age NUMBER
  5  );
  6  /

Type created.


CREATE TABLE person_obj_table OF person_type (
  2      PRIMARY KEY (person_id)
  3  );

Table created.

 CREATE TABLE contact_info (
  2      phone_number NUMBER(10),
  3      person_ref REF person_type SCOPE IS person_obj_table
  4  );

Table created.