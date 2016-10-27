class Card < ActiveRecord::Base
  include PgSearch

  belongs_to :deck

  multisearchable against: :name
end
