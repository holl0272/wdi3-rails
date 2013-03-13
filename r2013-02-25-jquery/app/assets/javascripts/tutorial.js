$(function(){

  $('#btn').click(cool_popup);
  $('#btncolor').click(cool_background);
  $('#btnhide').click(hide_text);
  $('#btnshow').click(show_text);
  $('#calc').click(compute_area);

});

function cool_popup()
{
  var name = $('#name').val();
  alert(name + ', you have won 1 billon dollars!!!');
}

function cool_background()
{
  var color = $('#color').val();
  $('body').css('background-color', color);
}

function hide_text()
{
  $('h1').hide();
}

function show_text()
{
  $('h1').show();
}

function compute_area()
{
  var width = parseInt($('#width').val());
  var height = parseInt($('#height').val());
  var a = area(width, height);
  $('#area').text(a + 'sq ft');
  if(a < 100)
    $('#area').addClass('success');
  else
    $('#area').addClass('alert');
}

function area(width, height)
{
  return width * height;
}
