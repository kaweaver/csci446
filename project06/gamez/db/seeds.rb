Game.delete_all
User.delete_all
Role.delete_all

Role.create!(:name => 'administrator', :description => 'Full access')
Role.create!(:name => 'member', :description => 'Basic access')
User.create!(:username => 'administrator', :password => 'password', :password_confirmation => 'password', :Firstname => 'Kameron', :Lastname => 'Weaver', :email => 'jsdflkjfea@gmail.com', :role_id => Role.find_or_create_by_name("administrator").id)
User.create!(:username => 'member', :password => 'password', :password_confirmation => 'password', :Firstname => 'Kameron', :Lastname => 'Weaver', :email => 'sesf@gmail.com', :role_id => Role.find_or_create_by_name("member").id)
(1..50).each do |i|
Game.create!(:title => 'This One Awesome Game', :rating => 'Lame', :user_id => 1)
end
