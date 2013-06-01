Readit.module "Views", (Views, Readit, Backbone, Marionette, $, _) ->
  class Post extends Backbone.Marionette.ItemView
    template: JST['post']
    onRender: ->
      console.log @model

  class @Posts extends Backbone.Marionette.CollectionView
    template: JST['posts']
    itemView: Post
    initialize: ->
      @listenTo Readit.vent, "posts:load_more", @loadMore

    loadMore: ->
      @collection.requestNextPage({remove: false})