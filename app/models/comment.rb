class Comment < ApplicationRecord
  belongs_to :flower

  validates :flower, presence: true
  validates :author, presence: true, length: { maximum: 100 }
  validates :body, presence: true, length: { maximum: 1000 }
  validates :vote, numericality: true, inclusion: 1..5, allow_blank: true
end
