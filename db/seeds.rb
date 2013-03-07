User.delete_all
Exercise.delete_all

u1 = User.create(:email => 'jillian@gmail.com', :password => 'abc', :password_confirmation => 'abc')
u2 = User.create(:email => 'zach@gmail.com', :password => 'abc', :password_confirmation => 'abc')
u3 = User.create(:email => 'cecelia@gmail.com', :password => 'abc', :password_confirmation => 'abc')

e1 = Exercise.create(:activity => 'cycling', :value => 25, :unit => 'miles', :completed => '03/04/2013')
e2 = Exercise.create(:activity => 'swimming', :value => 5, :unit => 'miles', :completed => '03/05/2013')
e3 = Exercise.create(:activity => 'strength circuit', :value => 3, :unit => 'reps', :completed => '03/06/2013')

u1.exercises << e2 << e3
u2.exercises << e1 << e3
u3.exercises << e1 << e2 << e3