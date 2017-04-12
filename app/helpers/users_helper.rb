module UsersHelper
  def no_entry(user)
    unless user.posts.any? && user.comments.any?
      true
    end
  end
end
