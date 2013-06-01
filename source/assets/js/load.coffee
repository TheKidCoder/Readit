Readit.ActiveRouters = {}
Readit.addRegions
  wrapRegion: '#js-attach-wrap'

window.ReaditInit = ->
  Readit.bind "initialize:after", -> Backbone.history.start {pushState: true}

  Readit.start()