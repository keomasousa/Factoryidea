class HighScore < ActiveRecord::Base
  belongs_to :user
  belongs_to :idea
  
  validates :vote, presence: true

  NOTAS = [
  	['Péssima', 1], 
  	['Regular', 2], 
  	['Boa', 3], 
  	['Ótima', 4], 
  	['Foda!', 5]
  ]
end
