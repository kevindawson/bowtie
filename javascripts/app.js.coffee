# source/_assets/javascripts/app.js.coffee

# Following are plugin libraries.
#= require ./libs/jquery.min
#= require ./libs/lunr.min
#= require ./libs/handlebars
#= require ./libs/jXHR
#= require ./libs/URI.min
#= require lunr_search

# Following are octopress related (defaults).
#= require ./libs/swfobject-dynamic
#= require modernizr-2.0
#= require octopress

# Instantiate a new search when dom is ready.
$(document).ready ->
    new LunrSearch '#search-query',
                    indexUrl: "/search.json",
                    results: "#search-results",
                    entries: ".entries",
                    template: "#search-results-template"
