Readit.module "Views", (Views, Readit, Backbone, Marionette, $, _) ->
  class @Header extends Backbone.Marionette.ItemView
    template: JST['header']
    tagName: 'header'