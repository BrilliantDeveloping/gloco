module OrganizationsHelper
  def image(org, css)
    org.image.blank? ? image_tag("#{org.category.downcase}_nologo.png", class: css) : image_tag(org.image_url.to_s, class: css)
  end
  def icon(org)
    image_tag("#{org.category.downcase}_nologo.png", class: 'tiny')
  end
end
