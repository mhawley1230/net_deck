class Deck < ActiveRecord::Base
  include PgSearch

  belongs_to :tournament
  has_many :cards

  multisearchable against: [:name, :colors]
  pg_search_scope :search_deck_and_cards, against: [:name, :colors], associated_against: { cards: [:name] }

  scope :search, -> (query) {
    search_deck_and_cards(query) if query.present?
  }

end
