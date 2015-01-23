user = User.find_or_create_by(email: ENV["ADMIN_EMAIL"]) do |user|
  user.firstname = 'Ricky'
  user.lastname = 'Brown'
  user.password = ENV["ADMIN_PASSWORD"]
  user.password_confirmation = ENV["ADMIN_PASSWORD"]
end

user = User.find_or_create_by(email: 'demo@user.com') do |user|
  user.firstname = 'Demo'
  user.lastname = 'User'
  user.password = 'password'
  user.password_confirmation = 'password'
end

organization = Organization.find_or_create_by(email: 'mail@zionequip.com') do |org|
  org.name = 'Zion Christian Fellowship'
  org.category = 'Church'
  org.about = 'Great place to worship God and get equipped in the Kingdom yo'
  org.phone = '614-793-8900'
  org.address = '10405 Sawmill Road, Powell, OH 43065'
end