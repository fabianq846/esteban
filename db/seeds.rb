# db/seeds.rb

esteban = User.find_or_create_by(email: 'esteban@example.com') do |user|
    user.nombre = 'Esteban'
    user.password = '123456'
    user.admin = true
  end
  
  puts "Usuario Esteban creado con el email: #{esteban.email} y password: 123456"
  