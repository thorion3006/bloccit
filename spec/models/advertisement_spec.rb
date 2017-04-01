require 'rails_helper'
include RandomData

RSpec.describe Advertisement, type: :model do
  let(:ad) { Advertisement.create(title: RandomData.random_sentence, body: RandomData.random_paragraph, price: 100) }

  describe "attributes" do
    it "should have title attribute" do
      expect(ad).to have_attributes(title: RandomData.random_sentence)
    end

    it "should have body attribute" do
      expect(ad).to have_attributes(body: RandomData.random_paragraph)
    end

    it "should have price attribute" do
      expect(ad).to have_attributes(price: 100)
    end
  end
end
