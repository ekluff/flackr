ready = ->

  # $('#tag-form').submit (event) ->
  #   console.log 'logged'
  #   $('.list-group').append '<li class="list-group-item">' + $('#tag-form-field').val() + '</li>'
  #   $('#tag-form-field').val ''
  #   event.preventDefault()
  # return
  alert 'hello world'
  console.log 'hello world'
$('.form-file-field').hover ->
  alert 'heyoooooo'
  console.log 'log me'
  fullPath = $(this).val()
  fileName = fullPath.replace(/^.*[\\\/]/, '')
  $('#file-upload-span').removeClass 'glyphicon glyphicon-upload file-upload-glyphicon'
  $('#file-upload-span').text fileName
  return

return


$(document).ready ready
$(document).on 'page:load', ready
