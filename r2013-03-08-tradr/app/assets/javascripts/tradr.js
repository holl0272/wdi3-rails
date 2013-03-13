$(function(){

  $('#new_user').on('click', '#cancel_new_user', hide_user_form);
  $('#stock').on('click', '.chart_btn', show_chart);

});

function hide_user_form()
{
  $('#new_btn').show();
  $('#new_user').empty();
}

function show_chart()
{
  var id = $(this).parent().prev().text();

  $.ajax({
      dataType: 'json',
      type: "get",
      url: "/stocks/" + id + "/chart"
  }).done(show_stock_chart);

  return false;
}

function show_stock_chart(stock)
{

  $('#chart').empty();

  new Morris.Line({
  element: 'chart',
  data: stock,
  xkey: 'completed',
  ykeys: ['value'],
  labels: ['Value']
  });

}