class Tournament < ActiveRecord::Base
  has_many :decks
  has_many :comments

  validates :name, presence: true
  validates :format, presence: true
  validates :description, presence: true
end
