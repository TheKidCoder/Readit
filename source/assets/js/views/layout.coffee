Readit.module "Views", (Views, Readit, Backbone, Marionette, $, _) ->
  class @Layout extends Backbone.Marionette.Layout
    template: JST['layout']
    regions:
      headerRegion:   '#headerRegion'
      postsRegion:    '#postsRegion'
      loadMoreRegion: '#loadMoreRegion'

    onRender: ->
      @postsRegion.show new Views.Posts collection: Readit.Posts