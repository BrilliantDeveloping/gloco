user = User.find_or_create_by(email: ENV["ADMIN_EMAIL"]) do |user|
    user.password = ENV["ADMIN_PASSWORD"]
    user.password_confirmation = ENV["ADMIN_PASSWORD"]
end

user = User.find_or_create_by(email: 'demo@user.com') do |user|
    user.password = 'password'
    user.password_confirmation = 'password'
end