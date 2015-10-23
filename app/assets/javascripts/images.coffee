ready = ->
    alert 'ayeeeee'
  $('#tag-form').submit (event) ->
    event.preventDefault()
    return
  # $(document).ajaxSuccess ->
  #   return
  return

$(document).ready ready
$(document).on 'page:load', ready
