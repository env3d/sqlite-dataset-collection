-- All moves for a pokemon, in english

select pokemon.identifier, moves.identifier, moves.id, generation_names.name
from pokemon 
inner join pokemon_moves
on pokemon.id = pokemon_moves.pokemon_id
inner join moves
on moves.id = pokemon_moves.move_id
inner join generation_names
on moves.generation_id = generation_names.generation_id
inner join languages
on generation_names.local_language_id = languages.id
where pokemon.identifier = 'pikachu'
and languages.identifier = 'en'