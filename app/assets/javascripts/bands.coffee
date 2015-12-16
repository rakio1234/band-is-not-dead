# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#genre-tags').tagit
    fieldName:   'band[genre_list]'
    singleField: true
    availableTags: gon.available_tags

  if gon.genre_tags?
    for tag in gon.genre_tags
      $('#genre-tags').tagit 'createTag', tag
