class Home
  @document_ready: ->
    $('#play_btn').click(Home.get_number)
    $('#reset_btn').click(Home.reset)

  @get_number: ->
    num = $('#ring_count').val()
    Home.create_rings(num)

  @create_rings: (num) ->
    num.to_i
    i = 1
    while i <= num
      x = $('<div>')
      $(x).css('height','10px')
      width = 5*i+10
      $(x).css('width',width)
      $(x).data('weight',i)
      $(x).addClass('disk')
      $('#call_1 .rings').append(x)
      i++

  @reset: ->
    $('#call_1 .rings').empty()
    $("input[type=text], textarea").val("")

$(document).ready(Home.document_ready)