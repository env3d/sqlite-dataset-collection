-- generation with the least amount of pokemon

/*
CREATE TABLE pokemon_forms (
        id INTEGER NOT NULL, 
        identifier VARCHAR(79) NOT NULL, 
        form_identifier VARCHAR(79), 
        pokemon_id INTEGER NOT NULL, 
        introduced_in_version_group_id INTEGER, 
        is_default BOOLEAN NOT NULL, 
        is_battle_only BOOLEAN NOT NULL, 
        is_mega BOOLEAN NOT NULL, 
        form_order INTEGER NOT NULL, 
        "order" INTEGER NOT NULL, 
        PRIMARY KEY (id), 
        FOREIGN KEY(pokemon_id) REFERENCES pokemon (id), 
        FOREIGN KEY(introduced_in_version_group_id) REFERENCES version_groups (id), 
        CHECK (is_default IN (0, 1)), 
        CHECK (is_battle_only IN (0, 1)), 
        CHECK (is_mega IN (0, 1))
);

CREATE TABLE pokemon_form_generations (
        pokemon_form_id INTEGER NOT NULL, 
        generation_id INTEGER NOT NULL, 
        game_index INTEGER NOT NULL, 
        PRIMARY KEY (pokemon_form_id, generation_id), 
        FOREIGN KEY(pokemon_form_id) REFERENCES pokemon_forms (id), 
        FOREIGN KEY(generation_id) REFERENCES generations (id)
);
*/


select pokemon_form_generations.generation_id, 
count(distinct(pokemon_forms.identifier)) as total  
from pokemon_forms
inner join pokemon_form_generations
on pokemon_forms.id = pokemon_form_generations.pokemon_form_id
group by pokemon_form_generations.generation_id
order by total desc


