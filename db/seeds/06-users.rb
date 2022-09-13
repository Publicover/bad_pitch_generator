if Rails.env.development?
  puts "Creating admin and user..."

  User.create(email: 'jim@badpitch.com', first_name: 'Jim', password: 'password')
  User.create(email: 'dana@badpitch.com', first_name: 'Dana', password: 'password')
end
