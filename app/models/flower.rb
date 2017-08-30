class Flower < ApplicationRecord
  has_many :comments

  dragonfly_accessor :picture

  validates :title, presence: true
  validates :description, length: {maximum: 1000}
  validates :votes, numericality: true
end
