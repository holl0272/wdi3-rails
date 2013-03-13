User.delete_all
Exercise.delete_all

u1 = User.create(:email => 'bob@gmail.com', :password => 'abc123', :password_confirmation => 'abc123')
u2 = User.create(:email => 'eric@gmail.com', :password => 'abc123', :password_confirmation => 'abc123')
u3 = User.create(:email => 'ryan@gmail.com', :password => 'abc123', :password_confirmation => 'abc123')

e1 = Exercise.create(:activity => 'Stairmaster', :value => '120', :unit => 'Floors', :completed => '3/8/2013')
e2 = Exercise.create(:activity => 'Crunches', :value => '100', :unit => 'Reps', :completed => '3/8/2013')
e3 = Exercise.create(:activity => 'Decline Press', :value => '30', :unit => 'Reps', :completed => '3/8/2013')
e4 = Exercise.create(:activity => 'Tricep Pulldown', :value => '50', :unit => 'Reps', :completed => '3/9/2013')
e5 = Exercise.create(:activity => 'Chest Flys', :value => '115', :unit => 'Reps', :completed => '3/9/2013')
e6 = Exercise.create(:activity => 'Benchpress', :value => '115', :unit => 'Reps', :completed => '3/9/2013')
e7 = Exercise.create(:activity => 'Bike', :value => '30', :unit => 'Minutes', :completed => '3/10/2013')
e8 = Exercise.create(:activity => 'Curls', :value => '80', :unit => 'Reps', :completed => '3/10/2013')
e9 = Exercise.create(:activity => 'Tredmill', :value => '30', :unit => 'Minutes', :completed => '3/10/2013')


u1.exercises << e1 << e2 << e3
u2.exercises << e4 << e5 << e6
u3.exercises << e7 << e8 << e9


