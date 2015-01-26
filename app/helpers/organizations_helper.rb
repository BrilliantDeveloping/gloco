module OrganizationsHelper
  def image(org, css)
    if action_name == 'new'
      image_tag("org_nologo.png", class: css)
    else
      org.is_a?(String) ? image_tag("#{org.downcase}_nologo.png", class: css) : 
      (org.image.blank? ? image_tag("#{org.category.downcase}_nologo.png", 
      class: css) : image_tag(org.image_url.to_s, class: css))
    end
  end
end
