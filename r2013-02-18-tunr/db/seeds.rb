Genre.delete_all
Song.delete_all
Album.delete_all
Artist.delete_all
User.delete_all
Mixtape.delete_all

g1 = Genre.create(:name => 'Hip-Hop')
g2 = Genre.create(:name => 'Rap')
g3 = Genre.create(:name => 'R&B')
g4 = Genre.create(:name => 'Soul')
g5 = Genre.create(:name => 'Rock')
g6 = Genre.create(:name => 'Pop')
g7 = Genre.create(:name => 'Dance')

a1 = Album.create(:name => 'The Adventures of Bobby Ray', :image => 'http://www.behindthehype.com/wp-content/uploads/2010/05/BOB_Cover.jpg')
a2 = Album.create(:name => 'Ring My Bell', :image => 'http://external.ak.fbcdn.net/safe_image.php?d=AQDZGrr3bfQCYoZf&w=500&h=500&url=http%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fen%2F3%2F37%2FRINGBELL.jpg')
a3 = Album.create(:name => 'Ben Harper & The Innocent Criminals', :image => 'http://25.media.tumblr.com/tumblr_lu0unemBUY1qf401lo1_1342651489_cover.jpg')
a4 = Album.create(:name => 'Ladies & Gentlemen', :image => 'http://g-ecx.images-amazon.com/images/G/02/ciu/f8/90/8444017b42a0bc7f2d54f110.L.jpg')
a5 = Album.create(:name => 'Champion', :image => 'http://25.media.tumblr.com/tumblr_lpqygcusqZ1qjp40xo1_1313038090_cover.png')
a6 = Album.create(:name => 'Glamazon', :image => 'http://24.media.tumblr.com/tumblr_lk8shmVQd01qc8kbeo1_500.png')

r1 = Artist.create(:name => 'B.o.B', :image => 'http://s1.eventfinder.co.nz/uploads/artists/transformed/306604-1064-14.jpg')
r2 = Artist.create(:name => 'Anita Ward', :image => 'http://api.thumbr.it/4998bedb06fee12199fdb8f3a4930bc8/Kh6jxsgS1HctGNUvUU8b/userserve-ak.last.fm/serve/500/77294690.png/500c/thumb.png')
r3 = Artist.create(:name => 'Ben Harper', :image => 'http://img199.imageshack.us/img199/3097/davidarquettebenharper.jpg')
r4 = Artist.create(:name => 'George Michael', :image => 'http://bi.gazeta.pl/im/5/6007/z6007055Q.jpg')
r5 = Artist.create(:name => 'RuPaul', :image => 'http://24.media.tumblr.com/tumblr_m3zxrflrFx1rosb88o1_500.jpg')

s1 = Song.create(:name => 'The Kids', :image => 'http://cdn.thatgrapejuice.net/wp-content/uploads/2012/08/bobatl.jpg', :filename => 'The Kids.m4a', :price => '2')
s2 = Song.create(:name => 'Airplanes', :image => 'http://www.pigeonsandplanes.com/wp-content/uploads/2010/04/b.o.b-500x500.jpg', :filename => 'Airplanes.m4a', :price => '2')
s3 = Song.create(:name => 'Ring My Bell', :image => 'http://24.media.tumblr.com/tumblr_mgn8o7lwXf1qc1vfso1_1358214096_cover.jpg', :filename => 'Ring My Bell.m4a', :price => '2')
s4 = Song.create(:name => 'Steal My Kisses', :image => 'http://cdn.7static.com/static/img/sleeveart/00/001/488/0000148850_500.jpg', :filename => 'Steal My Kisses.m4a', :price => '2')
s5 = Song.create(:name => 'Faith', :image => 'http://vol5.music-bazaar.com/album-images/vol5/426/426566/2247811-big/Faith-Remastered-Special-Edition-CD2-cover.jpg', :filename => 'Faith.m4a', :price => '2')
s6 = Song.create(:name => 'Father Figure', :image => 'http://24.media.tumblr.com/tumblr_lsohs5vq0Q1qd0v8s_1317961776_cover.jpg', :filename => 'Father Firgure', :price => '2')
s7 = Song.create(:name => 'Jealous of My Boogie', :image => 'http://cdn.7static.com/static/img/sleeveart/00/014/232/0001423278_500.jpg', :filename => 'Jealous of My Boogie.m4a', :price => '2')
s8 = Song.create(:name => 'Cover Girl', :image => 'http://cdn.7static.com/static/img/sleeveart/00/004/958/0000495870_500.jpg', :filename => 'Cover Girl.m4a', :price => '2')
s9 = Song.create(:name => 'Champion', :image => 'http://s4.evcdn.com/images/edpborder500/I0-001/005/020/295-8.jpeg_/rupaul-95.jpeg', :filename => 'Champion.m4a', :price => '2')
s10 = Song.create(:name => 'Glamazon', :image => 'http://media-cache-ec2.pinterest.com/upload/245094404691940750_HJmrSfs2_c.jpg', :filename => 'Glamazon.m4a', :price => '2')

u1 = User.create(:name => 'Admin', :image => 'https://s3.amazonaws.com/banters.com-produciton/original/102149/avatar?1330966191', :password => 'abc123', :password_confirmation => 'abc123', :balance => '100')
u2 = User.create(:name => 'Eric', :image => 'http://comicbook.com/wp-content/uploads/2012/03/starwars.gif', :password => 'abc123', :password_confirmation => 'abc123', :balance => '200')
u1.is_admin = true
u1.save

g1.songs = [s1, s2]
g2.songs = [s1, s2]
g3.songs = [s3]
g4.songs = [s3]
g5.songs = [s4]
g6.songs = [s5, s6]
g7.songs = [s7, s8, s9, s10]

a1.songs = [s1, s2]
a2.songs = [s3]
a3.songs = [s4]
a4.songs = [s5, s6]
a5.songs = [s7, s8, s9]
a6.songs = [s10]

r1.songs = [s1,s2]
r2.songs = [s3]
r3.songs = [s4]
r4.songs = [s5, s6]
r5.songs = [s7, s8, s9, s10]