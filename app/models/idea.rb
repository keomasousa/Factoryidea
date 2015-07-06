class Idea < ActiveRecord::Base
  belongs_to :classification
  belongs_to :user
  validates :name, :description, :classification, :user, presence: true
  validates :name, length: {minimum: 3}
  validates :description, length: {minimum: 10, maximum:120}


end
