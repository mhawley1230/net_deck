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

Tournament.create!( name: 'GP Providence', location: 'Providence, RI',
 date: '10/22/16', format: 'Standard' )

Tournament.create!( name: 'Pro Tour Kaladesh', location: 'Honolulu, HI',
 date: '10/14/16', format: 'Standard' )

Tournament.create!( name: 'New York Stax Exchange', location: 'New York, NY',
  date: '10/14/16', format: 'Vintage' )

Deck.create!( name: 'Grixis Control', colors: 'blue, black, red', placing: 1,
  archetype: 'control', player: 'Shota Yasooka', tournament_id: 3)

# Mainboard
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

# Sideboard
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
  archetype: 'control', player: 'Carlos Romao', tournament_id: 3)

# Mainboard
Card.create!( name: 'Evolving Wilds', colors: 'colorless', number_played: 4,
  img_url: MTG::Card.find(416975).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Island', colors: 'colorless', number_played: 5,
  img_url: MTG::Card.find(417826).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Mountain', colors: 'colorless', number_played: 2,
  img_url: MTG::Card.find(417832).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Smouldering Marsh', colors: 'colorless', number_played: 3,
  img_url: MTG::Card.find(405108).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Spirebluff Canal', colors: 'colorless', number_played: 4,
  img_url: MTG::Card.find(417822).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Sunken Hollow', colors: 'colorless', number_played: 4,
  img_url: MTG::Card.find(405111).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Swamp', colors: 'colorless', number_played: 2,
  img_url: MTG::Card.find(417831).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Wandering Fumarole', colors: 'colorless', number_played: 2,
  img_url: MTG::Card.find(407692).image_url, deck_id: 2, main?: true )

Card.create!( name: 'Thing in the Ice', colors: 'blue', number_played: 4,
  img_url: MTG::Card.find(409836).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Torrential Gearhulk', colors: 'blue', number_played: 4,
  img_url: MTG::Card.find(417640).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Anticipate', colors: 'blue', number_played: 3,
  img_url: MTG::Card.find(401813).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Ceremonious Rejection', colors: 'blue', number_played: 1,
  img_url: MTG::Card.find(417613).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Essence Extraction', colors: 'black', number_played: 1,
  img_url: MTG::Card.find(417653).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Galvanic Bombardment', colors: 'red', number_played: 4,
  img_url: MTG::Card.find(414427).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Glimmer of Genius', colors: 'blue', number_played: 2,
  img_url: MTG::Card.find(417622).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Harnessed Lightning', colors: 'red', number_played: 3,
  img_url: MTG::Card.find(417690).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Negate', colors: 'blue', number_played: 2,
  img_url: MTG::Card.find(416874).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Painful Truths', colors: 'black', number_played: 3,
  img_url: MTG::Card.find(401981).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Radiant Flames', colors: 'red', number_played: 2,
  img_url: MTG::Card.find(402002).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Transgress the Mind', colors: 'black', number_played: 1,
  img_url: MTG::Card.find(402075).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Unlicensed Disintegration', colors: 'red, black', number_played: 2,
  img_url: MTG::Card.find(417760).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Void Shatter', colors: 'blue', number_played: 3,
  img_url: MTG::Card.find(407559).image_url, deck_id: 2, main?: true )
Card.create!( name: 'Jace, Unraveler of Secrets', colors: 'blue', number_played: 1,
  img_url: MTG::Card.find(409812).image_url, deck_id: 2, main?: true )

# Sideboard
Card.create!( name: 'Ceremonious Rejection', colors: 'blue', number_played: 2,
  img_url: MTG::Card.find(417613).image_url, deck_id: 2, main?: false )
Card.create!( name: 'Confiscation Coup', colors: 'blue', number_played: 2,
  img_url: MTG::Card.find(417614).image_url, deck_id: 2, main?: false )
Card.create!( name: 'Jace, Unraveler of Secrets', colors: 'blue', number_played: 1,
  img_url: MTG::Card.find(409812).image_url, deck_id: 2, main?: false )
Card.create!( name: 'Negate', colors: 'blue', number_played: 1,
  img_url: MTG::Card.find(416874).image_url, deck_id: 2, main?: false )
Card.create!( name: 'Radiant Flames', colors: 'red', number_played: 1,
  img_url: MTG::Card.find(402002).image_url, deck_id: 2, main?: false )
Card.create!( name: 'Summary Dismissal', colors: 'blue', number_played: 2,
  img_url: MTG::Card.find(414370).image_url, deck_id: 2, main?: false )
Card.create!( name: 'To the Slaughter', colors: 'black', number_played: 2,
  img_url: MTG::Card.find(409889).image_url, deck_id: 2, main?: false )
Card.create!( name: 'Transgress the Mind', colors: 'black', number_played: 1,
  img_url: MTG::Card.find(402075).image_url, deck_id: 2, main?: false )
Card.create!( name: 'Weaver of Lightning', colors: 'red', number_played: 3,
  img_url: MTG::Card.find(414450).image_url, deck_id: 2, main?: false )

Deck.create!( name: 'Grixis Control 3', colors: 'blue, black, red', placing: 3,
  archetype: 'control', player: 'Shota Yasooka', tournament_id: 3)

# Mainboard
Card.create!( name: 'Evolving Wilds', colors: 'colorless', number_played: 4,
  img_url: MTG::Card.find(416975).image_url, deck_id: 3, main?: true )
Card.create!( name: 'Island', colors: 'colorless', number_played: 5,
  img_url: MTG::Card.find(417826).image_url, deck_id: 3, main?: true )
Card.create!( name: 'Mountain', colors: 'colorless', number_played: 2,
  img_url: MTG::Card.find(417832).image_url, deck_id: 3, main?: true )
Card.create!( name: 'Smouldering Marsh', colors: 'colorless', number_played: 3,
  img_url: MTG::Card.find(405108).image_url, deck_id: 3, main?: true )
Card.create!( name: 'Spirebluff Canal', colors: 'colorless', number_played: 4,
  img_url: MTG::Card.find(417822).image_url, deck_id: 3, main?: true )
Card.create!( name: 'Sunken Hollow', colors: 'colorless', number_played: 4,
  img_url: MTG::Card.find(405111).image_url, deck_id: 3, main?: true )
Card.create!( name: 'Swamp', colors: 'colorless', number_played: 2,
  img_url: MTG::Card.find(417831).image_url, deck_id: 3, main?: true )
Card.create!( name: 'Wandering Fumarole', colors: 'colorless', number_played: 2,
  img_url: MTG::Card.find(407692).image_url, deck_id: 3, main?: true )

Card.create!( name: 'Thing in the Ice', colors: 'blue', number_played: 4,
  img_url: MTG::Card.find(409836).image_url, deck_id: 3, main?: true )
Card.create!( name: 'Torrential Gearhulk', colors: 'blue', number_played: 4,
  img_url: MTG::Card.find(417640).image_url, deck_id: 3, main?: true )
Card.create!( name: 'Anticipate', colors: 'blue', number_played: 3,
  img_url: MTG::Card.find(401813).image_url, deck_id: 3, main?: true )
Card.create!( name: 'Ceremonious Rejection', colors: 'blue', number_played: 1,
  img_url: MTG::Card.find(417613).image_url, deck_id: 3, main?: true )
Card.create!( name: 'Essence Extraction', colors: 'black', number_played: 1,
  img_url: MTG::Card.find(417653).image_url, deck_id: 3, main?: true )
Card.create!( name: 'Galvanic Bombardment', colors: 'red', number_played: 4,
  img_url: MTG::Card.find(414427).image_url, deck_id: 3, main?: true )
Card.create!( name: 'Glimmer of Genius', colors: 'blue', number_played: 2,
  img_url: MTG::Card.find(417622).image_url, deck_id: 3, main?: true )
Card.create!( name: 'Harnessed Lightning', colors: 'red', number_played: 3,
  img_url: MTG::Card.find(417690).image_url, deck_id: 3, main?: true )
Card.create!( name: 'Negate', colors: 'blue', number_played: 2,
  img_url: MTG::Card.find(416874).image_url, deck_id: 3, main?: true )
Card.create!( name: 'Painful Truths', colors: 'black', number_played: 3,
  img_url: MTG::Card.find(401981).image_url, deck_id: 3, main?: true )
Card.create!( name: 'Radiant Flames', colors: 'red', number_played: 2,
  img_url: MTG::Card.find(402002).image_url, deck_id: 3, main?: true )
Card.create!( name: 'Transgress the Mind', colors: 'black', number_played: 1,
  img_url: MTG::Card.find(402075).image_url, deck_id: 3, main?: true )
Card.create!( name: 'Unlicensed Disintegration', colors: 'red, black', number_played: 2,
  img_url: MTG::Card.find(417760).image_url, deck_id: 3, main?: true )
Card.create!( name: 'Void Shatter', colors: 'blue', number_played: 3,
  img_url: MTG::Card.find(407559).image_url, deck_id: 3, main?: true )
Card.create!( name: 'Jace, Unraveler of Secrets', colors: 'blue', number_played: 1,
  img_url: MTG::Card.find(409812).image_url, deck_id: 3, main?: true )

# Sideboard
Card.create!( name: 'Ceremonious Rejection', colors: 'blue', number_played: 2,
  img_url: MTG::Card.find(417613).image_url, deck_id: 3, main?: false )
Card.create!( name: 'Confiscation Coup', colors: 'blue', number_played: 2,
  img_url: MTG::Card.find(417614).image_url, deck_id: 3, main?: false )
Card.create!( name: 'Jace, Unraveler of Secrets', colors: 'blue', number_played: 1,
  img_url: MTG::Card.find(409812).image_url, deck_id: 3, main?: false )
Card.create!( name: 'Negate', colors: 'blue', number_played: 1,
  img_url: MTG::Card.find(416874).image_url, deck_id: 3, main?: false )
Card.create!( name: 'Radiant Flames', colors: 'red', number_played: 1,
  img_url: MTG::Card.find(402002).image_url, deck_id: 3, main?: false )
Card.create!( name: 'Summary Dismissal', colors: 'blue', number_played: 2,
  img_url: MTG::Card.find(414370).image_url, deck_id: 3, main?: false )
Card.create!( name: 'To the Slaughter', colors: 'black', number_played: 2,
  img_url: MTG::Card.find(409889).image_url, deck_id: 3, main?: false )
Card.create!( name: 'Transgress the Mind', colors: 'black', number_played: 1,
  img_url: MTG::Card.find(402075).image_url, deck_id: 3, main?: false )
Card.create!( name: 'Weaver of Lightning', colors: 'red', number_played: 3,
  img_url: MTG::Card.find(414450).image_url, deck_id: 3, main?: false )
