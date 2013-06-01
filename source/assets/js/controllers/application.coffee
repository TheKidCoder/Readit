Readit.module "Controllers", (Controllers, Readit, Backbone, Marionette, $, _) ->
  @addInitializer ->
    Readit.ActiveRouters.App = new @AppRoutes

  @AppController =
    index: (path) ->
      Readit.Posts = new Readit.Models.Posts
      Readit.Posts.fetch().complete(->
        Readit.wrapRegion.show new Readit.Views.Layout
      )

  class @AppRoutes extends Backbone.Marionette.AppRouter
    controller: Controllers.AppController

    appRoutes:
      ''  : 'index'
      '/' : 'index'

