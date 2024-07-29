select pokemon.identifier, pokemon_form_names.form_name from pokemon
inner join pokemon_forms
on pokemon.id = pokemon_forms.pokemon_id
inner join pokemon_form_names
on pokemon_form_names.pokemon_form_id = pokemon_forms.id
where pokemon.identifier = 'unown'
and pokemon_form_names.local_language_id = 9


