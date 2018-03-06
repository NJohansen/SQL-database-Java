create table Participants ( 
people_email VARCHAR(255), 
tournaments_name VARCHAR(255),

CONSTRAINT participant_primary 
PRIMARY KEY(people_email, tournaments_name)
)