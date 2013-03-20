class Home
  @document_ready: ->
    $('#form').on('click', 'a[data-clear-form]', Home.clear_form)
    $('#slider').slider({ min: 0, max: 50, step: 2, slide: Home.sliding })

  @clear_form: (e) ->
    e.preventDefault()
    $('#form').empty()

  @sliding: (e, ui) ->
    console.log(ui.value)

$(document).ready(Home.document_ready)
