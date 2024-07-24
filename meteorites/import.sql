DROP TABLE temp;
CREATE TABLE temp (
    name TEXT,
    id INTEGER,
    nametype TEXT,
    class TEXT,
    mass REAL,
    discovery TEXT,
    year INTEGER,
    lat REAL,
    long REAL
);

DROP TABLE meteorites;
CREATE TABLE meteorites (
    id INTEGER PRIMARY KEY,
    name TEXT,    
    nametype TEXT,
    class TEXT,
    mass REAL,
    discovery TEXT,
    year INTEGER,
    lat REAL,
    long REAL
);

.import --csv --skip 1 meteorites.csv temp

update temp set year = NULL where year = '';
update temp set mass = NULL where mass = '';
update temp set lat = NULL where lat = '';
update temp set long = NULL where long = '';

update temp set mass = round(mass, 2);
update temp set lat = round(lat, 2);
update temp set long = round(long, 2);

delete from temp where nametype = 'Relict';

INSERT INTO meteorites (
    name, nametype, class, mass, discovery, year, lat, long
    )
    SELECT name, nametype, class, mass, discovery, year, lat, long 
    FROM temp ORDER BY year asc, name asc;
