module UsersHelper
  def avatar(value, css)
    value.avatar.blank? ? image_tag('no-avatar.png', class: css) : image_tag(value.avatar_url.to_s, class: css)
  end
end
