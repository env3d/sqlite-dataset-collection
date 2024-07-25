select pokemon.identifier, count(pokemon_forms.form_identifier) from pokemon
inner join pokemon_forms
on pokemon.id = pokemon_forms.pokemon_id
where pokemon.identifier = 'pikachu'
group by pokemon.identifier
order by count(pokemon_forms.form_identifier) desc

