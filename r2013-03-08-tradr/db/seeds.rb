User.delete_all

u1 = User.create(:email => 'bob@gmail.com', :cash_balance => '100', :stock_balance => '0', :password => 'abc123', :password_confirmation => 'abc123')
u2 = User.create(:email => 'eric@gmail.com', :cash_balance => '200', :stock_balance => '0', :password => 'abc123', :password_confirmation => 'abc123')
u3 = User.create(:email => 'ryan@gmail.com', :cash_balance => '300', :stock_balance => '0', :password => 'abc123', :password_confirmation => 'abc123')


