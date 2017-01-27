#= require ./namespace
#= require_tree ./models
#= require_tree ./collections
#= require_tree ./plugins
#= require_tree ./views
#= require_self

class RecipeOrganizer.Application
  constructor: ->
    @_init_element()


  _init_element: ->
    @$el = $("<div>")
    @$el.attr 'id', 'recipe-organizer-application'
    @$el.appendTo $("body")

  append_view: (view) ->
    @_current_view.remove() if @_current_view
    @_current_view = view
    @$el.html view.el