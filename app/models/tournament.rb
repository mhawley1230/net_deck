class Tournament < ActiveRecord::Base
  has_many :decks
  has_many :comments
end
