delete from user_role;
delete from usr;

insert into usr(id, active, password, username) values
(1, true, '$2a$08$0dMYKutw5k2gXNfRqu9VBO5/9AlJHQTlnTMEXpMz27IPf1EM7ELzC', 'admin'),
(2, true, '$2a$08$0dMYKutw5k2gXNfRqu9VBO5/9AlJHQTlnTMEXpMz27IPf1EM7ELzC', 'mike');

insert into user_role(user_id, roles) values
(1, 'USER'), (1, 'ADMIN'),
(2, 'USER');