
Mountain.delete_all

Mountain.create(:name => 'Mount Everest', :image => 'http://upload.wikimedia.org/wikipedia/commons/thumb/b/bf/Mt._Everest_from_Gokyo_Ri_November_5%2C_2012_Cropped.jpg/280px-Mt._Everest_from_Gokyo_Ri_November_5%2C_2012_Cropped.jpg', :height => 29029, :range => 'Mahalangur Himalaya', :parent => 'none', :ascents => 145)
Mountain.create(:name => 'K2', :image => 'http://upload.wikimedia.org/wikipedia/commons/thumb/1/12/K2_2006b.jpg/280px-K2_2006b.jpg', :height => 28251, :range => 'Baltoro Karakoram', :parent => 'Mount Everest', :ascents => 45)
Mountain.create(:name => 'Kangchenjunga', :image => 'http://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Kanchenjunga.JPG/280px-Kanchenjunga.JPG', :height => 28169, :range => 'Kangchenjunga Himalaya', :parent => 'Mount Everest', :ascents => 38)
Mountain.create(:name => 'Lhotse', :image => 'http://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/LhotseMountain.jos.500pix.jpg/280px-LhotseMountain.jos.500pix.jpg', :height => 27940, :range => 'Mahalangur Himalaya', :parent => 'Mount Everest', :ascents => 26)
Mountain.create(:name => 'Makalu', :image => 1, :height => 27838, :range => 'Mahalangur Himalaya', :parent => 'Mount Everest', :ascents => 45)