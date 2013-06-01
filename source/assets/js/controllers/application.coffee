Readit.module "Controllers", (Controllers, Readit, Backbone, Marionette, $, _) ->
  @addInitializer ->
    Readit.ActiveRouters.App = new @AppRoutes

  @AppController =
    index: (path) -> console.log "Index"

  class @AppRoutes extends Backbone.Marionette.AppRouter
    controller: Controllers.AppController

    appRoutes:
      ''  : 'index'
      '/' : 'index'

