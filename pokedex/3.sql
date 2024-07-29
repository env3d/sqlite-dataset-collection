-- highest attack stats

/*
CREATE TABLE pokemon (
        id INTEGER NOT NULL, 
        identifier VARCHAR(79) NOT NULL, 
        species_id INTEGER, 
        height INTEGER NOT NULL, 
        weight INTEGER NOT NULL, 
        base_experience INTEGER NOT NULL, 
        "order" INTEGER NOT NULL, 
        is_default BOOLEAN NOT NULL, 
        PRIMARY KEY (id), 
        FOREIGN KEY(species_id) REFERENCES pokemon_species (id), 
        CHECK (is_default IN (0, 1))
);
CREATE INDEX ix_pokemon_order ON pokemon ("order");
CREATE INDEX ix_pokemon_is_default ON pokemon (is_default);

CREATE TABLE pokemon_stats (
        pokemon_id INTEGER NOT NULL, 
        stat_id INTEGER NOT NULL, 
        base_stat INTEGER NOT NULL, 
        effort INTEGER NOT NULL, 
        PRIMARY KEY (pokemon_id, stat_id), 
        FOREIGN KEY(pokemon_id) REFERENCES pokemon (id), 
        FOREIGN KEY(stat_id) REFERENCES stats (id)
);

CREATE TABLE stats (
        id INTEGER NOT NULL, 
        damage_class_id INTEGER, 
        identifier VARCHAR(79) NOT NULL, 
        is_battle_only BOOLEAN NOT NULL, 
        game_index INTEGER, 
        PRIMARY KEY (id), 
        FOREIGN KEY(damage_class_id) REFERENCES move_damage_classes (id), 
        CHECK (is_battle_only IN (0, 1))
);
*/

select pokemon.identifier, stats.identifier, pokemon_stats.base_stat
from pokemon 
inner join pokemon_stats
on pokemon.id = pokemon_stats.pokemon_id
inner join stats
on pokemon_stats.stat_id = stats.id
where stats.identifier = 'attack'
order by pokemon_stats.base_stat desc limit 10