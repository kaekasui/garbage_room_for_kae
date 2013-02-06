# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

add_event = (button_id, textarea_id) ->
  button = document.getElementById(button_id)
  if button?
    document.getElementById(button_id).addEventListener("DbxChooserSuccess",
    (e) ->
      value = $(textarea_id).val()
      value += "\n<img src='"
      value += public_link(e.files[0].name)
      value += "' />"
      $(textarea_id).val(value)
    , false)

public_link = (name) ->
  path = "https://dl.dropbox.com/u/"
  path += $('#dropbox_uid').val()
  path += "/blog_images/"
  path += name

$ ->
  add_event('db-chooser1', '#admin_blog_contents1')
  add_event('db-chooser2', '#admin_blog_contents2')
