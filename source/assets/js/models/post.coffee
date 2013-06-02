Readit.module "Models", (Models, Readit, Backbone, Marionette, $, _) ->
  class @Post extends Backbone.Model
    parse: (resp) ->
      resp.data

  class @Posts extends Backbone.Paginator.requestPager
    initialize: (options = {}) ->
      @subReddit = options.subreddit ? ""

    model: Models.Post
    paginator_ui:
      firstPage: 0
      currentPage: 0
      perPage: 25
      totalPages: 10

    paginator_core:
      type: 'GET'
      dataType: 'jsonp'
      url: ->
        if @subReddit? and @subReddit isnt ''
          value = "r/#{@subReddit}"
        else
          value = ""
        "http://reddit.com/#{value}.json"

    server_api:
      'jsonp': '?'
      'limit': -> @perPage
      'after': -> @lastPost

    parse: (resp) ->
      @lastPost = resp.data.after
      resp.data.children
