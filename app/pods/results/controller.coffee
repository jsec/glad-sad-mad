`import Ember from 'ember'`
`import ExportMixin from 'skeleton-app/mixins/export'`

ResultsController = Ember.Controller.extend ExportMixin,
  actions:
    export: -> @exportDataFile()

  gladResponses: Ember.computed.filterBy('model', 'isGlad')
  sadResponses:  Ember.computed.filterBy('model', 'isSad')
  madResponses:  Ember.computed.filterBy('model', 'isMad')

  exportDataFile: ->
    file = []

    for type in ['glad', 'sad', 'mad']
      @addTypeHeader(file, type)
      @addRecordsToFile(file, @get("#{type}Responses").mapBy('message'))

    @saveFile(file)

`export default ResultsController`
