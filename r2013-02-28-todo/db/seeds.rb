User.delete_all
Task.delete_all
Priority.delete_all

u1 = User.create(:name => 'Bob', :email => 'bob@gmail.com', :password => 'abc123', :password_confirmation => 'abc123')
u2 = User.create(:name => 'Eric', :email => 'eric@gmail.com', :password => 'abc123', :password_confirmation => 'abc123')
u3 = User.create(:name => 'Ryan', :email => 'ryan@gmail.com', :password => 'abc123', :password_confirmation => 'abc123')

p1 = Priority.create(:name => 'High.300', :color => '#ff0000', :value => 300)
p2 = Priority.create(:name => 'Mid.200', :color => '#00ff00', :value => 200)
p3 = Priority.create(:name => 'Low.100', :color => '#0000ff', :value => 100)

t1 = Task.create(:address => 'Midtown NY', :title => 'get milk', :description => 'skim milk', :duedate => '3/10/2013')
t2 = Task.create(:address => 'Chelsea NY', :title => 'walk the dog', :description => 'more than a block', :duedate => '3/11/2013')
t3 = Task.create(:address => 'Chinatown NY', :title => 'wash the car', :description => 'need a good scrub', :duedate => '3/12/2013')

t1.priority = p1
t1.save
t2.priority = p2
t2.save
t3.priority = p3
t3.save
u1.priorities << p1 << p2 << p3
u1.tasks << t1 <<  t2 << t3