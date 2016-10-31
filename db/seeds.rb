# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'mtg_sdk'

Tournament.create!( name: 'SCG Milwaukee', location: 'Milwaukee, MI',
  date: '10/23/16', format: 'Standard' )
Tournament.create!( name: 'MTGO Standard MOCS', location: 'MTGO',
  date: '10/23/16', format: 'Standard' )
Tournament.create!( name: 'GP Providence', location: 'Providence, RI',
  date: '10/22/16', format: 'Standard' )
Tournament.create!( name: 'PPTQ Nashville', location: 'Nashville, TN',
  date: '10/16/16', format: 'Standard' )
Tournament.create!( name: 'Pro Tour Kaladesh', location: 'Honolulu, HI',
  date: '10/14/16', format: 'Standard' )

Tournament.create!( name: 'MTGO Competitive Modern Constructed League', location: 'MTGO',
  date: '10/30/16', format: 'Modern' )
Tournament.create!( name: 'MTGO Competitive Modern Constructed League', location: 'MTGO',
  date: '10/28/16', format: 'Modern' )
Tournament.create!( name: 'MTGO Competitive Modern Constructed League', location: 'MTGO',
  date: '10/28/16', format: 'Modern' )
Tournament.create!( name: 'SCG Milwaukee', location: 'Milwaukee, MI',
  date: '10/22/16', format: 'Modern' )
Tournament.create!( name: 'GPT Madrid by Planetvideo Corbetta', location: 'Madrid, Spain',
  date: '10/16/16', format: 'Modern' )

Tournament.create!( name: 'MTGO Competitive Legacy Constructed League', location: 'MTGO',
  date: '10/30/16', format: 'Legacy' )
Tournament.create!( name: 'MTGO Competitive Legacy Constructed League', location: 'MTGO',
  date: '10/28/16', format: 'Legacy' )
Tournament.create!( name: 'MTGO Competitive Legacy Constructed League', location: 'MTGO',
  date: '10/28/16', format: 'Legacy' )
Tournament.create!( name: 'MTGO Competitive Legacy Constructed League', location: 'MTGO',
  date: '10/26/16', format: 'Legacy' )
Tournament.create!( name: 'MTGO Competitive Legacy Constructed League', location: 'MTGO',
  date: '10/25/16', format: 'Legacy' )

Tournament.create!( name: 'Adelaide Eternal League - Vintage', location: 'Adelaide, Australia',
  date: '10/29/16', format: 'Vintage' )
Tournament.create!( name: 'MTGO Vintage Daily', location: 'MTGO',
  date: '10/26/16', format: 'Vintage' )
Tournament.create!( name: 'MTGO Vintage Daily', location: 'MTGO',
  date: '10/25/16', format: 'Vintage' )
Tournament.create!( name: 'MTGO Vintage Daily', location: 'MTGO',
  date: '10/24/16', format: 'Vintage' )
Tournament.create!( name: 'MTGO Vintage Daily', location: 'MTGO',
  date: '10/23/16', format: 'Vintage' )

# PT Kaladesh
Deck.create!( name: 'Grixis Control', colors: 'blue, black, red', placing: 1,
  archetype: 'Control', player: 'Shota Yasooka', tournament_id: 5)

Card.create!( name: 'Evolving Wilds', colors: 'colorless', number_played: 4,
  img_url: MTG::Card.find(416975).image_url, deck_id: 1, main?: true )
Card.create!( name: 'Island', colors: 'colorless', number_played: 5,
  img_url: MTG::Card.find(417826).image_url, deck_id: 1, main?: true )
Card.create!( name: 'Mountain', colors: 'colorless', number_played: 2,
  img_url: MTG::Card.find(417832).image_url, deck_id: 1, main?: true )
Card.create!( name: 'Smouldering Marsh', colors: 'colorless', number_played: 3,
  img_url: MTG::Card.find(405108).image_url, deck_id: 1, main?: true )
Card.create!( name: 'Spirebluff Canal', colors: 'colorless', number_played: 4,
  img_url: MTG::Card.find(417822).image_url, deck_id: 1, main?: true )
Card.create!( name: 'Sunken Hollow', colors: 'colorless', number_played: 4,
  img_url: MTG::Card.find(405111).image_url, deck_id: 1, main?: true )
Card.create!( name: 'Swamp', colors: 'colorless', number_played: 2,
  img_url: MTG::Card.find(417831).image_url, deck_id: 1, main?: true )
Card.create!( name: 'Wandering Fumarole', colors: 'colorless', number_played: 2,
  img_url: MTG::Card.find(407692).image_url, deck_id: 1, main?: true )

Card.create!( name: 'Thing in the Ice', colors: 'blue', number_played: 4,
  img_url: MTG::Card.find(409836).image_url, deck_id: 1, main?: true )
Card.create!( name: 'Torrential Gearhulk', colors: 'blue', number_played: 4,
  img_url: MTG::Card.find(417640).image_url, deck_id: 1, main?: true )
Card.create!( name: 'Anticipate', colors: 'blue', number_played: 3,
  img_url: MTG::Card.find(401813).image_url, deck_id: 1, main?: true )
Card.create!( name: 'Ceremonious Rejection', colors: 'blue', number_played: 1,
  img_url: MTG::Card.find(417613).image_url, deck_id: 1, main?: true )
Card.create!( name: 'Essence Extraction', colors: 'black', number_played: 1,
  img_url: MTG::Card.find(417653).image_url, deck_id: 1, main?: true )
Card.create!( name: 'Galvanic Bombardment', colors: 'red', number_played: 4,
  img_url: MTG::Card.find(414427).image_url, deck_id: 1, main?: true )
Card.create!( name: 'Glimmer of Genius', colors: 'blue', number_played: 2,
  img_url: MTG::Card.find(417622).image_url, deck_id: 1, main?: true )
Card.create!( name: 'Harnessed Lightning', colors: 'red', number_played: 3,
  img_url: MTG::Card.find(417690).image_url, deck_id: 1, main?: true )
Card.create!( name: 'Negate', colors: 'blue', number_played: 2,
  img_url: MTG::Card.find(416874).image_url, deck_id: 1, main?: true )
Card.create!( name: 'Painful Truths', colors: 'black', number_played: 3,
  img_url: MTG::Card.find(401981).image_url, deck_id: 1, main?: true )
Card.create!( name: 'Radiant Flames', colors: 'red', number_played: 2,
  img_url: MTG::Card.find(402002).image_url, deck_id: 1, main?: true )
Card.create!( name: 'Transgress the Mind', colors: 'black', number_played: 1,
  img_url: MTG::Card.find(402075).image_url, deck_id: 1, main?: true )
Card.create!( name: 'Unlicensed Disintegration', colors: 'red, black', number_played: 2,
  img_url: MTG::Card.find(417760).image_url, deck_id: 1, main?: true )
Card.create!( name: 'Void Shatter', colors: 'blue', number_played: 3,
  img_url: MTG::Card.find(407559).image_url, deck_id: 1, main?: true )
Card.create!( name: 'Jace, Unraveler of Secrets', colors: 'blue', number_played: 1,
  img_url: MTG::Card.find(409812).image_url, deck_id: 1, main?: true )

Card.create!( name: 'Ceremonious Rejection', colors: 'blue', number_played: 2,
  img_url: MTG::Card.find(417613).image_url, deck_id: 1, main?: false )
Card.create!( name: 'Confiscation Coup', colors: 'blue', number_played: 2,
  img_url: MTG::Card.find(417614).image_url, deck_id: 1, main?: false )
Card.create!( name: 'Jace, Unraveler of Secrets', colors: 'blue', number_played: 1,
  img_url: MTG::Card.find(409812).image_url, deck_id: 1, main?: false )
Card.create!( name: 'Negate', colors: 'blue', number_played: 1,
  img_url: MTG::Card.find(416874).image_url, deck_id: 1, main?: false )
Card.create!( name: 'Radiant Flames', colors: 'red', number_played: 1,
  img_url: MTG::Card.find(402002).image_url, deck_id: 1, main?: false )
Card.create!( name: 'Summary Dismissal', colors: 'blue', number_played: 2,
  img_url: MTG::Card.find(414370).image_url, deck_id: 1, main?: false )
Card.create!( name: 'To the Slaughter', colors: 'black', number_played: 2,
  img_url: MTG::Card.find(409889).image_url, deck_id: 1, main?: false )
Card.create!( name: 'Transgress the Mind', colors: 'black', number_played: 1,
  img_url: MTG::Card.find(402075).image_url, deck_id: 1, main?: false )
Card.create!( name: 'Weaver of Lightning', colors: 'red', number_played: 3,
  img_url: MTG::Card.find(414450).image_url, deck_id: 1, main?: false )

Deck.create!( name: 'Jeskai Control', colors: 'blue, white, red', placing: 2,
  archetype: 'Control', player: 'Carlos Romao', tournament_id: 5)

Card.create!( name: 'Aether Hub', colors: 'colorless', number_played: 4,
  img_url: MTG::Card.find(417815).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Inspiring Vantage', colors: 'colorless', number_played: 3,
  img_url: MTG::Card.find(417819).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Island', colors: 'colorless', number_played: 4,
  img_url: MTG::Card.find(417828).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Plains', colors: 'colorless', number_played: 6,
  img_url: MTG::Card.find(417823).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Port Town', colors: 'colorless', number_played: 4,
  img_url: MTG::Card.find(410046).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Spirebluff Canal', colors: 'colorless', number_played: 1,
  img_url: MTG::Card.find(417822).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Wandering Fumarole', colors: 'colorless', number_played: 4,
  img_url: MTG::Card.find(407692).image_url, deck_id: 2, main?: true )

Card.create!( name: 'Archangel Avacyn', colors: 'white', number_played: 2,
  img_url: MTG::Card.find(409741).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Torrential Gearhulk', colors: 'blue', number_played: 3,
  img_url: MTG::Card.find(417640).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Anticipate', colors: 'blue', number_played: 3,
  img_url: MTG::Card.find(401813).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Ceremonious Rejection', colors: 'blue', number_played: 3,
  img_url: MTG::Card.find(417613).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Blessed Alliance', colors: 'white', number_played: 1,
  img_url: MTG::Card.find(414302).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Fumigate', colors: 'white', number_played: 2,
  img_url: MTG::Card.find(417588).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Glimmer of Genius', colors: 'blue', number_played: 4,
  img_url: MTG::Card.find(417622).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Harnessed Lightning', colors: 'red', number_played: 4,
  img_url: MTG::Card.find(417690).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Immolating Glare', colors: 'white', number_played: 3,
  img_url: MTG::Card.find(407530).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Summary Dismissal', colors: 'blue', number_played: 2,
  img_url: MTG::Card.find(414370).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Radiant Flames', colors: 'red', number_played: 2,
  img_url: MTG::Card.find(402002).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Void Shatter', colors: 'blue', number_played: 3,
  img_url: MTG::Card.find(407559).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Dovin Baan', colors: 'blue', number_played: 2,
  img_url: MTG::Card.find(417752).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Quarantine Field', colors: 'white', number_played: 2,
  img_url: MTG::Card.find(402001).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Stasis Snare', colors: 'white', number_played: 3,
  img_url: MTG::Card.find(402048).image_url, deck_id: 2, main?: true )

Card.create!( name: 'Blessed Alliance', colors: 'white', number_played: 1,
  img_url: MTG::Card.find(414302).image_url, deck_id: 2, main?: false )
Card.create!( name: 'Ceremonious Rejection', colors: 'blue', number_played: 3,
  img_url: MTG::Card.find(417613).image_url, deck_id: 2, main?: false )
Card.create!( name: 'Fumigate', colors: 'white', number_played: 1,
  img_url: MTG::Card.find(417588).image_url, deck_id: 2, main?: false )
Card.create!( name: 'Negate', colors: 'blue', number_played: 3,
  img_url: MTG::Card.find(416874).image_url, deck_id: 2, main?: false )
Card.create!( name: 'Gideon, Ally of Zendikar', colors: 'white', number_played: 3,
  img_url: MTG::Card.find(401897).image_url, deck_id: 2, main?: false )
Card.create!( name: 'Linvala, the Preserver', colors: 'white', number_played: 1,
  img_url: MTG::Card.find(407535).image_url, deck_id: 2, main?: false )
Card.create!( name: 'Spell Queller', colors: 'blue, white', number_played: 3,
  img_url: MTG::Card.find(414494).image_url, deck_id: 2, main?: false )


Deck.create!( name: 'Boros Dwarves', colors: 'red, white', placing: 3,
  archetype: 'Aggro', player: 'Ben Hull', tournament_id: 5)

# Mainboard
Card.create!( name: 'Inspiring Vantage', colors: 'colorless', number_played: 4,
  img_url: MTG::Card.find(417819).image_url, deck_id: 3, main?: true)
Card.create!( name: 'Mountain', colors: 'colorless', number_played: 6,
  img_url: MTG::Card.find(417832).image_url, deck_id: 3, main?: true)
Card.create!( name: 'Needle Spires', colors: 'colorless', number_played: 4,
  img_url: MTG::Card.find(407685).image_url, deck_id: 3, main?: true)
Card.create!( name: 'Plains', colors: 'colorless', number_played: 10,
  img_url: MTG::Card.find(417823).image_url, deck_id: 3, main?: true)

Card.create!( name: 'Depala, Pilot Exemplar', colors: 'red, white', number_played: 3,
  img_url: MTG::Card.find(409836).image_url, deck_id: 3, main?: true)
Card.create!( name: 'Pia Nalaar', colors: 'red', number_played: 2,
  img_url: MTG::Card.find(417640).image_url, deck_id: 3, main?: true)
Card.create!( name: 'Selfless Spirit', colors: 'white', number_played: 3,
  img_url: MTG::Card.find(401813).image_url, deck_id: 3, main?: true)
Card.create!( name: 'Thraben Inspector', colors: 'white', number_played: 4,
  img_url: MTG::Card.find(417613).image_url, deck_id: 3, main?: true)
Card.create!( name: 'Toolcraft Exemplar', colors: 'white', number_played: 4,
  img_url: MTG::Card.find(417653).image_url, deck_id: 3, main?: true)
Card.create!( name: 'Veteran Motorist', colors: 'red, white', number_played: 4,
  img_url: MTG::Card.find(414427).image_url, deck_id: 3, main?: true)
Card.create!( name: 'Declaration in Stone', colors: 'blue', number_played: 4,
  img_url: MTG::Card.find(417622).image_url, deck_id: 3, main?: true)
Card.create!( name: 'Harnessed Lightning', colors: 'red', number_played: 3,
  img_url: MTG::Card.find(417690).image_url, deck_id: 3, main?: true)
Card.create!( name: 'Fleetwheel Cruiser', colors: 'colorless', number_played: 2,
  img_url: MTG::Card.find(417690).image_url, deck_id: 3, main?: true)
Card.create!( name: 'Gideon, Ally of Zendikar', colors: 'white', number_played: 2,
  img_url: MTG::Card.find(401897).image_url, deck_id: 3, main?: true )
Card.create!( name: 'Skysovereign, Consul Flagship', colors: 'colorless', number_played: 1,
  img_url: MTG::Card.find(401897).image_url, deck_id: 3, main?: true )
Card.create!( name: "Smuggler's Copter", colors: 'colorless', number_played: 4,
  img_url: MTG::Card.find(401897).image_url, deck_id: 3, main?: true )

# Sideboard
Card.create!( name: 'Chandra, Torch of Defiance', colors: 'red', number_played: 1,
  img_url: MTG::Card.find(417613).image_url, deck_id: 3, main?: false )
Card.create!( name: 'Fragmentize', colors: 'white', number_played: 2,
  img_url: MTG::Card.find(417614).image_url, deck_id: 3, main?: false )
Card.create!( name: 'Galvanic Bombardment', colors: 'red', number_played: 4,
  img_url: MTG::Card.find(414427).image_url, deck_id: 3, main?: false )
Card.create!( name: 'Gideon, Ally of Zendikar', colors: 'white', number_played: 2,
  img_url: MTG::Card.find(401897).image_url, deck_id: 3, main?: false )
Card.create!( name: 'Harnessed Lightning', colors: 'red', number_played: 4,
  img_url: MTG::Card.find(417690).image_url, deck_id: 3, main?: false )
Card.create!( name: 'Skywhaler\'s Shot', colors: 'white', number_played: 2,
  img_url: MTG::Card.find(414370).image_url, deck_id: 3, main?: false )
Card.create!( name: 'Weaver of Lightning', colors: 'red', number_played: 3,
  img_url: MTG::Card.find(414450).image_url, deck_id: 3, main?: false )

Deck.create!( name: 'Boros Tokens', colors: 'red, white', placing: 4,
  archetype: 'Aggro', player: 'Ben Hull', tournament_id: 5)

Card.create!( name: 'Inspiring Vantage', colors: 'colorless', number_played: 4,
  img_url: MTG::Card.find(417819).image_url, deck_id: 4, main?: true)
Card.create!( name: 'Mountain', colors: 'colorless', number_played: 6,
  img_url: MTG::Card.find(417832).image_url, deck_id: 4, main?: true)
Card.create!( name: 'Needle Spires', colors: 'colorless', number_played: 3,
  img_url: MTG::Card.find(407685).image_url, deck_id: 4, main?: true)
Card.create!( name: 'Plains', colors: 'colorless', number_played: 7,
  img_url: MTG::Card.find(417823).image_url, deck_id: 4, main?: true)
Card.create!( name: 'Aether Hub', colors: 'colorless', number_played: 2,
  img_url: MTG::Card.find(417823).image_url, deck_id: 4, main?: true)

Card.create!( name: 'Inventor\'s Appentice', colors: 'red', number_played: 4,
  img_url: MTG::Card.find(409836).image_url, deck_id: 4, main?: true)
Card.create!( name: 'Pia Nalaar', colors: 'red', number_played: 3,
  img_url: MTG::Card.find(417640).image_url, deck_id: 4, main?: true)
Card.create!( name: 'Reckless Bushwhacker', colors: 'red', number_played: 4,
  img_url: MTG::Card.find(401813).image_url, deck_id: 4, main?: true)
Card.create!( name: 'Thraben Inspector', colors: 'white', number_played: 4,
  img_url: MTG::Card.find(417613).image_url, deck_id: 4, main?: true)
Card.create!( name: 'Toolcraft Exemplar', colors: 'white', number_played: 4,
  img_url: MTG::Card.find(417653).image_url, deck_id: 4, main?: true)
Card.create!( name: 'Declaration in Stone', colors: 'white', number_played: 4,
  img_url: MTG::Card.find(417622).image_url, deck_id: 4, main?: true)
Card.create!( name: 'Harnessed Lightning', colors: 'red', number_played: 1,
  img_url: MTG::Card.find(417690).image_url, deck_id: 4, main?: true)
Card.create!( name: 'Outnumber', colors: 'colorless', number_played: 4,
  img_url: MTG::Card.find(417690).image_url, deck_id: 4, main?: true)
Card.create!( name: 'Servo Exhibition', colors: 'colorless', number_played: 4,
img_url: MTG::Card.find(401897).image_url, deck_id: 4, main?: true )
Card.create!( name: 'Gideon, Ally of Zendikar', colors: 'white', number_played: 2,
  img_url: MTG::Card.find(401897).image_url, deck_id: 4, main?: true )
Card.create!( name: "Smuggler's Copter", colors: 'colorless', number_played: 4,
  img_url: MTG::Card.find(401897).image_url, deck_id: 4, main?: true )

# Sideboard
Card.create!( name: 'Fragmentize', colors: 'white', number_played: 2,
  img_url: MTG::Card.find(417614).image_url, deck_id: 4, main?: false )
Card.create!( name: 'Gideon, Ally of Zendikar', colors: 'white', number_played: 2,
  img_url: MTG::Card.find(401897).image_url, deck_id: 4, main?: false )
Card.create!( name: 'Harnessed Lightning', colors: 'red', number_played: 2,
  img_url: MTG::Card.find(417690).image_url, deck_id: 4, main?: false )
Card.create!( name: 'Lantern Scout', colors: 'white', number_played: 2,
  img_url: MTG::Card.find(417613).image_url, deck_id: 4, main?: false )
Card.create!( name: 'Make a Stand', colors: 'white', number_played: 2,
  img_url: MTG::Card.find(414370).image_url, deck_id: 4, main?: false )
Card.create!( name: 'Needle Spire', colors: 'colorless', number_played: 1,
  img_url: MTG::Card.find(407685).image_url, deck_id: 4, main?: false )
Card.create!( name: 'Stasis Snare', colors: 'white', number_played: 2,
  img_url: MTG::Card.find(414450).image_url, deck_id: 4, main?: false )
Card.create!( name: 'Thalia, Heretic Cathar', colors: 'white', number_played: 2,
  img_url: MTG::Card.find(414450).image_url, deck_id: 4, main?: false )

Deck.create!( name: 'Azorius Flash', colors: 'blue, white', placing: 5,
  archetype: 'Aggro', player: 'Joey Manner', tournament_id: 5)

Deck.create!( name: 'Mardu Vehicles', colors: 'red, white, black', placing: 6,
  archetype: 'Aggro', player: 'Shi Tian Lee', tournament_id: 5)

Deck.create!( name: 'Marvelous Temur', colors: 'red, blue, green', placing: 7,
  archetype: 'Combo', player: 'Matthew Nass', tournament_id: 5)

Deck.create!( name: 'UR Energy Control', colors: 'red, blue', placing: 8,
  archetype: 'Control', player: 'Pierre Dagen', tournament_id: 5)
