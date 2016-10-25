class Deck < ActiveRecord::Base
  include PgSearch

  belongs_to :tournament
  has_many :cards

  multisearchable :against => [:name, :colors, :archetype]
end
