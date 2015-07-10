class Classification < ActiveRecord::Base
  has_many :ideas
  validates :name, presence: true
  validates :name, length: {minimum: 3}

end

