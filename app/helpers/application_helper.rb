module ApplicationHelper
  def form_group_tag(errors, &block)
    css_Class = 'form-group'
    css_Class << ' has-error' if errors.any?
    content_tag :div, capture(&block), class: css_Class
  end

  def avatar_url(user)
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=48"
  end
end
