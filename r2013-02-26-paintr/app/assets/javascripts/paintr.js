$(function(){

    $('#add_color').click(add_color);
    $('#add_image').click(add_image);
    $('#colors').on('click', '.box', set_color);
    $('#clear_color').click(clear);
    $('#images').on('click', '.box', set_image);
    $('#canvas').on('mouseover', '.paint', paint_color);
    $('#clear_image').click(clearimg);
   create_paint_boxes();
});


function clearimg(){
console.log('hi');
$('.pic').css('background', 'none');
$('#images').empty();
}


function paint_color(event){
  if(event.shiftKey){
    var color = $('#selected').css('background-color')
    var box = $(this)
    box.css('background-color', color);
  }
}

function image_back(){
  var image= $('#selected').css('background-color');
  var i = $(this);
  i.css('background-color', color);
}


function create_paint_boxes(){
for(var i=0; i< 10000; i++){
var paint= $('<div>');
paint.addClass('paint');
$('#canvas').append(paint);
}

}


function set_color(){
  var box = $(this); //particular box object
  var color = box.css('background-color');
  $('#selected').css('background-color', color);
}

function set_image(){
  var i = $(this);
  var image= i.attr('src');
  $('#canvas').addClass('pic');
 $('.pic').css('background', 'url("' + image + '") no-repeat');
}


function clear()
{
  $('#colors').empty();
  $('#selected').css('background-color', 'white');
}


function add_color(){

var color = $('#color').val();
var box = $('<div>');
box.addClass('box');
box.css('background-color', color);
$('#colors').prepend(box); //this means that box div is inside of colors div id.
$('#color').val('');
$('#color').focus();

}

function add_image(){
  var image = $('#image').val();
  var i = $('<img>');
  i.addClass('box');
  i.attr('src', image);
  $('#images').append(i); //inside at the top.
  $('#image').val('');
  $('#image').focus();
}

// $(function(){

//   $('#add_color').click(add_color);
//   $('#clear_color').click(clear);
//   $('#colors').on('click', '.box', set_color);
//   $('#canvas').on('mouseover', '.paint', paint_color);
//   create_paint_boxes();

// });

function paint_color()
{
  var color = $('#selected').css('background-color')
  var box = $(this);
  box.css('background-color', color);
}

function create_paint_boxes()
{
  for(var i = 0; i < 5000; i++)
  {
    var paint = $('<div>');
    paint.addClass('paint');
    $('#canvas').append(paint);
  }
}

function clear()
{
  $('#colors').empty();
  $('#selected').css('background-color', 'white')
  $('.paint').css('background-color', 'white')
}

// // function set_color()
// // {
// //   var box = $(this);
// //   $('#selected').css('background-color', box.css('background-color'));
// // }

// // function add_color()
// // {
// //   var color = $('#color').val();
// //   var box = $('<div>');
// //   box.addClass('box');
// //   box.css('background-color', color);
// //   $('#colors').prepend(box);
// //   $('#color').val('');
// //   $('#color').focus();
// // }