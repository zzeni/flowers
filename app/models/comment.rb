class Comment < ApplicationRecord
  belongs_to :flower

  validates :flower, presence: true
  validates :author, presence: true, length: { maximum: 100 }
  validates :body, presence: true, length: { maximum: 1000 }
  validates :vote, numericality: true, inclusion: 0..5, allow_blank: true

  after_save :update_flower_rating!

  def update_flower_rating!
    if flower
      comments_with_votes = flower.comments.where.not(vote: nil)
      flower.votes = comments_with_votes.count
      flower.rating = flower.votes > 0 ? comments_with_votes.sum(:vote)*1.0 / flower.votes : 0
      flower.rating = flower.rating.round(1)
      flower.save!
    end
  end
end
