`import Ember from 'ember'`

AddController = Ember.Controller.extend
  _saveResponse: (type, message) ->
    message = message?.trim()

    if !message? or Ember.isEmpty(message)
      alert('Message cannot be blank')
      return

    response = @store.createRecord 'response',
      type:    type
      message: message

    response.save().then =>
      alert('Saved!')

  actions:
    saveGladResponse: ->
      @_saveResponse 'glad', @get('glad')
      @set 'glad', undefined

    saveSadResponse: ->
      @_saveResponse 'sad', @get('sad')
      @set 'sad', undefined

    saveMadResponse: ->
      @_saveResponse 'mad', @get('mad')
      @set 'mad', undefined

`export default AddController`
