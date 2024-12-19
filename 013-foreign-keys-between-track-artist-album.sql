-- Author: Rishu Kumar <rishu.kumar@tuni.fi>
-- Date: 2023-10-20
-- File: 013-foreign-keys-between-track-artist-album.sql

-- Create the ARTIST table with primary key constraint
CREATE TABLE artist (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

-- Create the TRACK table with primary key constraint and a foreign key constraint to ARTIST
CREATE TABLE track (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    artist INT,
    FOREIGN KEY (artist) REFERENCES artist(id)
);

-- Create the ALBUM table with primary key constraint
CREATE TABLE album (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    year INT,
    label VARCHAR(255)
);

-- Create the ALBUM_TRACKS table with primary key constraints and foreign key constraints to TRACK and ALBUM
CREATE TABLE album_tracks (
    track INT,
    album INT,
    PRIMARY KEY (track, album),
    FOREIGN KEY (track) REFERENCES track(id),
    FOREIGN KEY (album) REFERENCES album(id)
);

-- Successful FK: Insert into ARTIST table first, then into TRACK table, and finally into ALBUM table.
INSERT INTO artist (id, name)
VALUES (1, 'Elvis Presley');

INSERT INTO track (id, name, artist)
VALUES (1, 'Hound Dog', 1);

INSERT INTO album (id, name, year, label)
VALUES (1, 'Elvis Presley', 1966, 'RCA Victor');

-- Failed FK: Should fail because there is no track with id 4 defined in the "track" table
INSERT INTO album_tracks (track, album)
VALUES (4, 1);

-- End of file
