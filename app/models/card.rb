class Card < ActiveRecord::Base
  include PgSearch

  belongs_to :deck

  validates :name, presence: true
  validates :colors, presence: true
  validates :number_played, presence: true
  validates :img_url, presence: true
  validates :deck_id, presence: true
  validates :main?, presence: true

  multisearchable against: [:name, :colors]
end
