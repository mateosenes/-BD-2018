CREATE DATABASE imdb;
USE imdb;
CREATE TABLE IF not exists film (film_id INT(11) NOT NULL PRIMARY KEY auto_increment, title VARCHAR(25) NOT NULL, description tinytext, release_date DATE);
CREATE TABLE IF not exists actor (actor_id INT(11) NOT NULL PRIMARY KEY auto_increment, first_name VARCHAR(25) NOT NULL, last_name VARCHAR(25));
CREATE TABLE IF not exists film_actor (actor_id INT(11) NOT NULL, film_id INT(11) NOT NULL);
ALTER TABLE film_actor add CONSTRAINT fk_filmactor_actor FOREIGN KEY (actor_id) REFERENCES actor (actor_id);
ALTER TABLE film_actor add CONSTRAINT fk_filmactor_film FOREIGN KEY (film_id) REFERENCES film (film_id);
ALTER TABLE film add last_update TIMESTAMP;
ALTER TABLE actor add last_update TIMESTAMP;

insert into actor(first_name, last_name) values ('Brad','Pit');
insert into actor(first_name, last_name) values ('Edward','Norton');
insert into film(title,description,release_date) values ('Fight Club','tipo depresivo crea club de pelea con un vendedor de jabon','1976-02-08')
insert into film(title,description,release_date) values ('Spider-Man','Adolecente que se vuelve heroe','2009-03-05');
insert into actor(first_name, last_name) values ('Eduardo','Juarez');
insert into actor(first_name, last_name) values ('Carlos','Perez');
insert into film_actor(actor_id,film_id) values ('1','2');

 
