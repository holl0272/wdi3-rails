User.delete_all
Tag.delete_all
Product.delete_all

User.create(email: 'holl0272@gmail.com', password: 'a', password_confirmation: 'a', balance: 5_000)
admin = User.create(email: 'eric@f-robots.com', password: 'a', password_confirmation: 'a')
admin.is_admin = true
admin.save

t1 = Tag.create(name: 'apple')
t2 = Tag.create(name: 'phone')
t3 = Tag.create(name: 'android')
t4 = Tag.create(name: 'blackberry')

p1 = Product.create(name: 'iPhone 5', description: 'The one and only', cost: 212, address: 'Brooklyn, NYC', remote_image_url: 'http://images.apple.com/iphone/design/images/hero_front.jpg')
p2 = Product.create(name: 'Galaxy S4', description: 'Android fanbois rejoice', cost: 99, address: 'Newark, NJ', remote_image_url: 'http://cdn.itproportal.com/photos/htc_one_1_original.jpg')
p3 = Product.create(name: 'Blackberry 10', description: 'Really?!?!', cost: 411, address: 'Detroit, MI', remote_image_url: 'http://cdn-w.sneakhype.com/wp-content/uploads/2013/01/blackberry-10-00.jpg')

p1.tags = [t1, t2]
p2.tags = [t3, t2]
p3.tags = [t4, t2]
