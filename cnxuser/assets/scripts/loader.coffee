define [
  'underscore'
  'backbone'
], (_, Backbone) ->

  initialize = () ->
    setup = (router) ->
      # Catch internal application links and let Backbone handle the routing
      $(document).on 'click', 'a:not([data-bypass])', (e) ->
        external = new RegExp('^((f|ht)tps?:)?//')
        href = $(this).attr('href')

        e.preventDefault();

        if external.test(href)
          window.open(href, '_blank')
        else
          router.navigate(href, {trigger: true})
      
      Backbone.history.start
        pushState: true

    require ['cs!router'], (router) ->
      setup(router);

  return {initialize: initialize}
