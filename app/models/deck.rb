class Deck < ActiveRecord::Base
  include PgSearch

  belongs_to :tournament
  has_many :cards

  multisearchable against: [:name]
  pg_search_scope :search_deck_and_cards, against: [:name], associated_against: { cards: [:name] }

  validates :name, presence: true
  validates :placing, presence: true
  validates :player, presence: true
  validates :tournament_id, presence: true

  scope :search, -> (query) {
    search_deck_and_cards(query) if query.present?
  }

end
