`import Ember from 'ember'`

ResultsRoute = Ember.Route.extend
  model: ->
    @store.findAll('response')

`export default ResultsRoute`
