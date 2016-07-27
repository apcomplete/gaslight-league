# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

squirtle_squad = Team.create!({ name: "Squirtle Squad", color: "blue" })
charmander_club = Team.create!({ name: "Charmander Club", color: "red" })
bulbasaur_bunch = Team.create!({ name: "Bulbasaur Bunch", color: "green" })
pikachu_posse = Team.create!({ name: "Pikachu Posse", color: "yellow" })

Trainer.create([
  # bulbasaur
  { name: "Kenny", handle: "slippinmickeys", team: bulbasaur_bunch },
  { name: "Joel", handle: "JoelbyWan", team: bulbasaur_bunch },
  { name: "Bill", handle: "Skatrgurl", team: bulbasaur_bunch },
  { name: "Alex H.", handle: "Puma513", team: bulbasaur_bunch },
  { name: "Jessica", handle: "???", team: bulbasaur_bunch },
  # charmander
  { name: "Lauren", handle: "MGLolo", team: charmander_club },
  { name: "James S.", handle: "st23am", team: charmander_club },
  { name: "Tim", handle: "tmecklem", team: charmander_club },
  { name: "Tyler", handle: "TySh1", team: charmander_club },
  { name: "Ben", handle: "DreadParrot", team: charmander_club },
  { name: "Merrilee", handle: "???", team: charmander_club },
  # pikachu
  { name: "Katie", handle: "KatiePohlman", team: pikachu_posse },
  { name: "Ryan", handle: "Slyran", team: pikachu_posse },
  { name: "Dewayne", handle: "xero654", team: pikachu_posse },
  { name: "Haley", handle: "Haleyrbmoore", team: pikachu_posse },
  { name: "Patrick", handle: "phildebrandt", team: pikachu_posse },
  { name: "Michelle", handle: "CityHounds", team: pikachu_posse },
  # squirtle
  { name: "Doug", handle: "GreyWatyr", team: squirtle_squad },
  { name: "Peter", handle: "plkkak", team: squirtle_squad },
  { name: "Super Chris", handle: "???", team: squirtle_squad },
  { name: "Alex P.", handle: "apcomplete", team: squirtle_squad },
  { name: "James T.", handle: "Pokemonnewbie14", team: squirtle_squad },
  { name: "Kat", handle: "katzenbarosu", team: squirtle_squad },
])

categories = Category.create([
  { name: "Community Organizer", description: "Set down the most Lure Modules at the Pok&eacute;stop nearest Gaslight's office", help_text: "Lure Modules Used" },
  { name: "Collector", description: "Has the highest number of Pok&eacute;mon in their Pok&eacute;dex", help_text: "Kanto" },
  { name: "Going the Distance", description: "Has the most walking clocked to their Pokemon Go app", help_text: "Jogger" },
  { name: "More Fish in the Sea", description: "Has the highest number of Magikarp candies (you'll get to Gyarados eventually)", help_text: "# of Magikarp Candies" },
  { name: "Gotta Hatch 'Em All", description: "Has hatched the most eggs <br/><br/>", help_text: "Breeder" },
  { name: "Gym Rat", description: "Has won battles and trained the most times in a gym", help_text: "Battle Girl + Ace Trainer" },
  { name: "Hoarder", description: "Has caught the most Pok&eacute;mon", help_text: "Collector" },
  { name: "Biologist", description: "Has evolved the most Pok&eacute;mon", help_text: "Scientist" },
])

initial_scorings = [
  {"Name" => "Kenny", "Hoarder"=>"798", "Going the Distance"=>"38", "Gym Rat"=>"34", "More Fish in the Sea"=>"31", "Community Organizer"=>"0", "Gotta Hatch 'Em All"=>"21", "Collector"=>"81", "Biologist"=>"89", },
  {"Name" => "Joel", "Hoarder"=>"26", "Going the Distance"=>"1.17", "Gym Rat"=>"0", "More Fish in the Sea"=>"3", "Community Organizer"=>"0", "Gotta Hatch 'Em All"=>"0", "Collector"=>"12", "Biologist"=>"0", },
  {"Name" => "Bill", "Hoarder"=>"0", "Going the Distance"=>"0", "Gym Rat"=>"0", "More Fish in the Sea"=>"0", "Community Organizer"=>"0", "Gotta Hatch 'Em All"=>"0", "Collector"=>"0", "Biologist"=>"0", },
  {"Name" => "Alex H.", "Hoarder"=>"0", "Going the Distance"=>"0", "Gym Rat"=>"0", "More Fish in the Sea"=>"0", "Community Organizer"=>"0", "Gotta Hatch 'Em All"=>"0", "Collector"=>"0", "Biologist"=>"0", },
  {"Name" => "Jessica", "Hoarder"=>"0", "Going the Distance"=>"0", "Gym Rat"=>"0", "More Fish in the Sea"=>"0", "Community Organizer"=>"0", "Gotta Hatch 'Em All"=>"0", "Collector"=>"0", "Biologist"=>"0", },
  {"Name" => "Lauren", "Hoarder"=>"526", "Going the Distance"=>"47.12", "Gym Rat"=>"21", "More Fish in the Sea"=>"53", "Community Organizer"=>"0", "Gotta Hatch 'Em All"=>"19", "Collector"=>"65", "Biologist"=>"28", },
  {"Name" => "James S.", "Hoarder"=>"403", "Going the Distance"=>"24.58", "Gym Rat"=>"26", "More Fish in the Sea"=>"9", "Community Organizer"=>"0", "Gotta Hatch 'Em All"=>"10", "Collector"=>"55", "Biologist"=>"23"},
  {"Name" => "Tim", "Hoarder"=>"0", "Going the Distance"=>"0", "Gym Rat"=>"0", "More Fish in the Sea"=>"0", "Community Organizer"=>"0", "Gotta Hatch 'Em All"=>"0", "Collector"=>"0", "Biologist"=>"0", },
  {"Name" => "Tyler", "Hoarder"=>"43", "Going the Distance"=>"6.15", "Gym Rat"=>"0", "More Fish in the Sea"=>"0", "Community Organizer"=>"0", "Gotta Hatch 'Em All"=>"2", "Collector"=>"18", "Biologist"=>"0", },
  {"Name" => "Ben", "Hoarder"=>"28", "Going the Distance"=>"0", "Gym Rat"=>"0", "More Fish in the Sea"=>"0", "Community Organizer"=>"0", "Gotta Hatch 'Em All"=>"0", "Collector"=>"28", "Biologist"=>"4", },
  {"Name" => "Merrilee", "Handle"=>"—", "Hoarder"=>"0", "Going the Distance"=>"0", "Gym Rat"=>"0", "More Fish in the Sea"=>"0", "Community Organizer"=>"0", "Gotta Hatch 'Em All"=>"0", "Collector"=>"0", "Biologist"=>"0", },
  {"Name" => "Katie", "Hoarder"=>"577", "Going the Distance"=>"25.12", "Gym Rat"=>"4", "More Fish in the Sea"=>"27", "Community Organizer"=>"0", "Gotta Hatch 'Em All"=>"14", "Collector"=>"59", "Biologist"=>"12", },
  {"Name" => "Ryan", "Hoarder"=>"790", "Going the Distance"=>"41.88", "Gym Rat"=>"14", "More Fish in the Sea"=>"21", "Community Organizer"=>"0", "Gotta Hatch 'Em All"=>"24", "Collector"=>"76", "Biologist"=>"77", },
  {"Name" => "Dewayne", "Hoarder"=>"0", "Going the Distance"=>"0", "Gym Rat"=>"0", "More Fish in the Sea"=>"0", "Community Organizer"=>"0", "Gotta Hatch 'Em All"=>"0", "Collector"=>"0", "Biologist"=>"0", },
  {"Name" => "Haley", "Hoarder"=>"0", "Going the Distance"=>"0", "Gym Rat"=>"0", "More Fish in the Sea"=>"0", "Community Organizer"=>"0", "Gotta Hatch 'Em All"=>"0", "Collector"=>"0", "Biologist"=>"0", },
  {"Name" => "Patrick", "Hoarder"=>"410", "Going the Distance"=>"18.89", "Gym Rat"=>"0", "More Fish in the Sea"=>"13", "Community Organizer"=>"0", "Gotta Hatch 'Em All"=>"8", "Collector"=>"53", "Biologist"=>"21", },
  {"Name" => "Michelle", "Hoarder"=>"84", "Going the Distance"=>"12.15", "Gym Rat"=>"0", "More Fish in the Sea"=>"10", "Community Organizer"=>"0", "Gotta Hatch 'Em All"=>"3", "Collector"=>"36", "Biologist"=>"4", },
  {"Name" => "Doug", "Hoarder"=>"528", "Going the Distance"=>"44.61", "Gym Rat"=>"22", "More Fish in the Sea"=>"23", "Community Organizer"=>"0", "Gotta Hatch 'Em All"=>"22", "Collector"=>"71", "Biologist"=>"64", },
  {"Name" => "Peter", "Hoarder"=>"0", "Going the Distance"=>"0", "Gym Rat"=>"0", "More Fish in the Sea"=>"0", "Community Organizer"=>"0", "Gotta Hatch 'Em All"=>"0", "Collector"=>"0", "Biologist"=>"0", },
  {"Name" => "Super Chris", "Handle"=>"—", "Hoarder"=>"0", "Going the Distance"=>"0", "Gym Rat"=>"0", "More Fish in the Sea"=>"0", "Community Organizer"=>"0", "Gotta Hatch 'Em All"=>"0", "Collector"=>"0", "Biologist"=>"0", },
  {"Name" => "Alex P.", "Hoarder"=>"499", "Going the Distance"=>"22.07", "Gym Rat"=>"0", "More Fish in the Sea"=>"3", "Community Organizer"=>"0", "Gotta Hatch 'Em All"=>"12", "Collector"=>"65", "Biologist"=>"33", },
  {"Name" => "James T.", "Hoarder"=>"0", "Going the Distance"=>"0", "Gym Rat"=>"0", "More Fish in the Sea"=>"0", "Community Organizer"=>"0", "Gotta Hatch 'Em All"=>"0", "Collector"=>"0", "Biologist"=>"0", },
  {"Name" => "Kat", "Hoarder"=>"380", "Going the Distance"=>"18.2", "Gym Rat"=>"12", "More Fish in the Sea"=>"18", "Community Organizer"=>"0", "Gotta Hatch 'Em All"=>"10", "Collector"=>"61", "Biologist"=>"13", },
]

initial_scorings.each do |row|
  trainer = Trainer.find_by(name: row["Name"])
  categories.each do |c|
    initial = row[c.name]
    Scoring.create!(trainer: trainer, category: c, initial_value: initial, value: initial)
  end
end

User.create!(email: "admin@teamgaslight.com", password: "unicorn-office", password_confirmation: "unicorn-office")
