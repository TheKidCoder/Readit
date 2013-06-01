Readit.module "Models", (Models, Readit, Backbone, Marionette, $, _) ->
  class @Post extends Backbone.Model

  class @Posts extends Backbone.Paginator.requestPager
    model: Models.Post
    paginator_ui:
      firstPage: 0
      currentPage: 0
      perPage: 25
      totalPages: 10

    paginator_core:
      type: 'GET'
      dataType: 'jsonp'
      url: => "http://reddit.com/#{}.json"

    server_api:
      '$filter': ''
      '$top': -> @perPage
      '$skip': -> @currentPage * @perPage
      '$orderby': 'ReleaseYear'
      '$format': 'json'
      '$inlinecount': 'allpages'
      '$callback': 'callback'

    parse: (resp) ->
      console.log resp
