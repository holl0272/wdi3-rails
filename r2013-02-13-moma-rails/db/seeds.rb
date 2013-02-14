Artist.delete_all
Painting.delete_all

Artist.create(:name => 'Hans von Aachen', :nationality => 'German', :dob => '1/1/1552', :period => 'German mannerist', :image => 'http://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Aachen_Selbstbildnis.jpg/220px-Aachen_Selbstbildnis.jpg')
Artist.create(:name => 'Pacita Abad', :nationality => 'Philippines', :dob => '2/3/1946', :period => 'Recent', :image => 'http://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Pacita_Abad.jpg/220px-Pacita_Abad.jpg')
Artist.create(:name => 'Giuseppe Abbati', :nationality => 'Italian', :dob => '4/5/1836', :period => 'long time ago', :image => 'http://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Boldini_-_Giuseppe_Abbati.jpg/220px-Boldini_-_Giuseppe_Abbati.jpg')


Painting.create(:title => 'Sieg der Wahrheit unter dem Schutze der Gerechtigkeit', :year => 1598, :medium => 'oil', :style => 'copper', :image => 'http://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Aachen_Allegory.jpg/220px-Aachen_Allegory.jpg')
Painting.create(:title => 'Ati-Atihan', :year => '1983', :medium => 'Acrylic', :style => 'Stitched', :image => 'http://upload.wikimedia.org/wikipedia/en/thumb/8/83/Ati-Atihan_%281983%29_by_Pacita_Abad.jpg/220px-Ati-Atihan_%281983%29_by_Pacita_Abad.jpg')
Painting.create(:title => 'The Tower of the Palazzo ', :year => '1865', :medium => 'oil', :style => 'wood', :image => 'http://upload.wikimedia.org/wikipedia/en/c/cc/GiuseppeAbbati01.jpg')
