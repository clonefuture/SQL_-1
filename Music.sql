
create table if not exists Genre (
	id serial primary key,
	Genre varchar(40) unique not null
);

create table if not exists Artist (
	id serial primary key,
	Artist_name varchar(80) unique not null,
	Genre_id integer references Genre(id) not null
);

create table if not exists Album (
	id serial primary key,
	Album_title varchar(80) unique not null,
	Release_year integer,
	Artist_id integer references Artist(id) not null
);

create table if not exists Track (
	id serial primary key,
	Track_title varchar(100) not null,
	Track_duration integer check(Track_duration > 0) not null,
	Album_id integer references Album(id) not null
);