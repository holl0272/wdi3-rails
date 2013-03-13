$(function(){

  $('#flickr').click(search_flickr);
  $('#clear').click(clear_photos);
  $('#stop').click(stop_timer);
});

var timer;
var index;
var photos;
var page = 1;

function display_photo(photo)
{
  photo = photos[index];
  var width = $('#width').val();
  var height = $('#height').val();
  var url = "url(http://farm"+ photo.farm +".static.flickr.com/"+ photo.server +"/"+ photo.id +"_"+ photo.secret +"_m.jpg)";
  var image = $('<div>');
  image.addClass('image');
  image.css({'background-image' : url, 'width' : width, 'height' : height});
  $('#images').prepend(image);
  index++;

  if(index == 500)
  {
    page++;
    clearInterval(timer);
    search_flickr();
  }
}

function search_flickr()
{
  var search = $('#search').val();
  $.getJSON('http://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=0b2945b25b8f5aa6c32a08a6feba61b5&text=' + search + '&per_page=500&page=' + page + '&format=json&jsoncallback=?', results);
}

function results(data)
{
  var sec = $('#duration').val();
  sec = parseInt(sec);
  var msec = sec * 1000;
  index = 0;
  timer = setInterval(display_photo, msec);
  photos = data.photos.photo;
}

function stop_timer()
{
  clearInterval(timer);
}

function clear_photos()
{
  $('#images').empty();
}