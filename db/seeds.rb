# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

kevin = User.create(name: 'Kevin');
jason = User.create(name: 'Jason');

workout = Channel.create(name: 'Workout');
party = Channel.create(name: 'Party');

music = VideoMix.create(name: 'Now Thats what I call music');
south = VideoMix.create(name: 'Dirty South');

country = Genre.create(name: 'Country');
punk = Genre.create(name: 'Punk');
pop = Genre.create(name: 'Pop');

ninetys = Era.create(name: '1990s');
millenium = Era.create(name: '2000s');
todays = Era.create(name: '2010s');

dinner = Occasion.create(name: 'Dinner')
hh = Occasion.create(name: 'Happy Hour')
bf = Occasion.create(name: 'Breakfast')
lunch = Occasion.create(name: 'Lunch')
pc = Occasion.create(name: 'Pre Club')


Subtag.create(name: 'country-1', parent_id: country.id)
Subtag.create(name: 'country-2', parent_id: country.id)
Subtag.create(name: 'country-3', parent_id: country.id)

Subtag.create(name: 'punk-1', parent_id: punk.id)
Subtag.create(name: 'punk-2', parent_id: punk.id)
Subtag.create(name: 'punk-3', parent_id: punk.id)

Subtag.create(name: 'pop-1', parent_id: pop.id)
Subtag.create(name: 'pop-2', parent_id: pop.id)
Subtag.create(name: 'pop-3', parent_id: pop.id)

Subtag.create(name: 'ninetys-1', parent_id: ninetys.id)
Subtag.create(name: 'ninetys-2', parent_id: ninetys.id)
Subtag.create(name: 'ninetys-3', parent_id: ninetys.id)

Subtag.create(name: 'millenium-1', parent_id: millenium.id)
Subtag.create(name: 'millenium-2', parent_id: millenium.id)
Subtag.create(name: 'millenium-3', parent_id: millenium.id)

Subtag.create(name: 'todays-1', parent_id: todays.id)
Subtag.create(name: 'todays-2', parent_id: todays.id)
Subtag.create(name: 'todays-3', parent_id: todays.id)
