class HighScore < ActiveRecord::Base
  belongs_to :user
  belongs_to :idea
  validates :vote, presence: true
end
