----------TABLE GENRE----------------
CREATE TABLE genre(
  id INT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(255),
  PRIMARY KEY(id)
);

----------TABLE SOURCE----------------
CREATE TABLE source(
  id INT GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(255),
  PRIMARY KEY(id)
);

----------TABLE LABEL----------------
CREATE TABLE label
(
  id INT GENERATED ALWAYS AS IDENTITY,
  title VARCHAR(255),
  color VARCHAR(255),
  PRIMARY KEY(id)
);

----------TABLE AUTHOR----------------
CREATE TABLE author(
  id INTEGER GENERATED ALWAYS AS IDENTITY,
  first_name VARCHAR(255) ,
  last_name VARCHAR(255) ,
  PRIMARY KEY(id)
);


----------TABLE ITEM----------------
CREATE TABLE item (
    id INTEGER GENERATED ALWAYS AS IDENTITY,
    genre_id INTEGER ,
    author_id INTEGER ,
    source_id INTEGER ,
    label_id INTEGER ,
    publish_date DATE ,
    archived BOOLEAN  DEFAULT FALSE,
    PRIMARY KEY(id),
    FOREIGN KEY (author_id) REFERENCES author (id),
    FOREIGN KEY (source_id) REFERENCES source (id),
    FOREIGN KEY (label_id) REFERENCES label (id),
    FOREIGN KEY (genre_id) REFERENCES genre (id)
);
----------TABLE BOOK----------------
CREATE TABLE book
(
  publisher    VARCHAR(255),
  cover_state    VARCHAR(255)
) INHERITS (item);

----------TABLE GAME----------------
CREATE TABLE game(
  multiplayer VARCHAR(255),
  last_played_at DATE
)INHERITS (item);

----------TABLE MUSIC ALBUM----------------
CREATE TABLE music_albums(
  on_spotify BOOLEAN
)INHERITS (item);

----------TABLE MOVIE----------------
CREATE TABLE movie(
  silent BOOLEAN
)INHERITS (item);
