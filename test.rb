require 'mtg_sdk'
require 'pry'

binding.pry
card = MTG::Card.where(name: 'Harnessed Lightning').all[0]
puts card.img_url
