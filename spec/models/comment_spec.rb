require 'rails_helper'

RSpec.describe Comment, type: :model do
  context "#save" do
    before(:each) do
      Comment.create!(flower: flower, author: "me", body: "tralala", vote: 2)
      Comment.create!(flower: flower, author: "me", body: "tralala", vote: 5)
      Comment.create!(flower: flower, author: "me", body: "tralala", vote: 5)
    end

    let (:flower) { Flower.create(title: "My flower", description: "Some desc") }
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
        }.to change { flower.reload.rating }.to 3.8
      end
    end

    context "when vote attribute is NOT set" do
      it "does NOT change the flower's votes and rating values" do
        comment.save!
        expect(flower.reload.votes).to eq(3)
        expect(flower.reload.rating).to eq(4)
      end
    end
  end
end
