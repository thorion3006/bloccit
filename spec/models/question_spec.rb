require 'rails_helper'

RSpec.describe Question, type: :model do
  describe 'attributes' do
    let(:question) { Question.create!(title: "RandomData.random_sentence", body: "RandomData.random_paragraph", resolved: true) }

    it 'has title, body and resolved attributes' do
      expect(question).to have_attributes(title: "RandomData.random_sentence", body: "RandomData.random_paragraph", resolved: true)
    end
  end
end
