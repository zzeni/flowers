require 'rails_helper'

RSpec.describe Comment, type: :model do
  context "#create" do
    let (:flower) { Flower.create(title: "My flower", description: "Some desc", votes: 3, rating: "4.2") }
    let (:comment) { Comment.new(flower: flower, author: "me", body: "tralala") }

    context "when vote attribute is set" do
      it "increases the flower's votes value" do
        comment.vote = 3
        expect {
          comment.save!
        }.to change { flower.votes }.to 4
      end

      it "updates the flower's rating" do
        comment.vote = 3
        expect {
          comment.save!
        }.to change { flower.rating }.to 3.9
      end
    end

    context "when vote attribute is NOT set" do
      it "does Not change the flower's votes and rating values" do
        comment.save!
        expect(flower.reload.votes).to eq(3)
        expect(flower.reload.rating).to eq(4.2)
      end
    end
  end
end
