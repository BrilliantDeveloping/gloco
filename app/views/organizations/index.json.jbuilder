json.array!(@organizations) do |organization|
  json.extract! organization, :id, :image, :name, :category, :about, :email, :phone, :address
  json.url organization_url(organization, format: :json)
end
