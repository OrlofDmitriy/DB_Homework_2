create table if not exists genre (
	ID serial primary key,
	Name varchar(50) not null
);

create table if not exists artist (
	ID serial primary key,
	Name text not null unique,
	genre_id integer references genre(ID)
);

create table if not exists album (
	ID serial primary key,
	artist_id integer references artist(ID),
	Name varchar(100) not null,
	Release_year integer
);

create table if not exists track (
	ID serial primary key,
	album_id integer references album(ID),
	Name text not null,
	Duration integer
);