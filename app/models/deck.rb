class Deck < ActiveRecord::Base
  belongs_to :tournament
  has_many :cards
end
