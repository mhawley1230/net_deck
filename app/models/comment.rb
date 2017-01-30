class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :tournament

  validates :body, presence: true
  validates :user_id, presence: true
  validates :tournament_id, presence: true
end
