#= require jquery/jquery
#= require underscore/underscore
#= require backbone/backbone
#= require backbone.marionette/lib/backbone.marionette
#= require backbone.paginator/lib/backbone.paginator
#= require hamlcoffee
#= require setup
#= require_tree ./controllers
#= require_tree ./models
#= require_tree ./templates
#= require_tree ./views
#= require load

(($) ->
  $(window).on('load', ->
    window.ReaditInit()
  )
)(jQuery)