require 'rails_helper'

RSpec.describe "users/show.html.erb", type: :view do
  let(:user) { create(:user) }
  let(:other_user) { create(:user) }
  let(:post) { create(:post, user: other_user) }

  describe "displays users favorited posts" do
    before do
      user.favorites.create(post: post)
      @user = user
    end

    it 'renders posts/post partial' do
      render 'posts/post', :post => post
    end
  end
end
