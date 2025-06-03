-- Active: 1748956180064@@127.0.0.1@5432@mydb
CREATE TABLE rangers (
    ranger_id SERIAL UNIQUE PRIMARY KEY,
    name VARCHAR(50),
    region VARCHAR(50)
);

INSERT INTO rangers(name, region) 
VALUES
    ('Alice Green', 'Northern Hills'),
    ('Bob White', 'River Delta  '),
    ('Carol King', 'Mountain Range');

CREATE TABLE species (
    species_id SERIAL UNIQUE PRIMARY KEY,
    common_name VARCHAR(50),
    scientific_name varchar(50),
    discovery_date DATE,
    conservation_status VARCHAR(20)
);

INSERT INTO species (common_name, scientific_name, discovery_date, conservation_status)
VALUES
    ('Snow Leopard', 'Panthera uncia', '1775-01-01', 'Endangered'),
    ('Bengal Tiger', 'Panthera tigris tigris', '1758-01-01', 'Endangered'),
    ('Red Panda', 'Ailurus fulgens ', '1825-01-01 ', 'Vulnerable'),
    ('Asiatic Elephant', 'Elephas maximus indicus', '1758-01-01', 'Endangered');

CREATE TABLE sightings (
    sighting_id SERIAL UNIQUE PRIMARY KEY,
    ranger_id INTEGER REFERENCES rangers(ranger_id),
    species_id INTEGER REFERENCES species(species_id),
    sighting_time TIMESTAMP without time zone,
    location VARCHAR(50),
    notes VARCHAR(50)
);

INSERT INTO sightings (species_id, ranger_id, location, sighting_time, notes)
VALUES
    (1, 1, 'Peak Ridge', '2024-05-10 07:45:00', 'Camera trap image captured'),
    (2, 2, 'Bankwood Area', ' 2024-05-12 16:20:00', 'Juvenile seen'),
    (3, 3, 'Bamboo Grove East', '2024-05-15 09:10:00', 'Feeding observed'),
    (1, 2, 'Snowfall Pass', '2024-05-18 18:30:00 ', NULL);


-- problem 1

INSERT INTO rangers (name, region)
VALUES
    ('Derek Fox', 'Coastal Plains');

-- problrm 2

SELECT count(DISTINCT species_id) as unique_species_count from sightings;

-- problem 3

SELECT * FROM sightings
    WHERE location ILIKE '%pass%';

-- problem 4

SELECT name, count(*) total_sightings  FROM sightings
    JOIN rangers USING(ranger_id)
        GROUP BY name;

-- problem 5

