import Route from '@ember/routing/route'

ResultsRoute = Route.extend
  model: ->
    @store.findAll('response')

export default ResultsRoute
