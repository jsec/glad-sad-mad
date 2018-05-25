import { isPresent, isEmpty } from '@ember/utils'
import Controller from '@ember/controller'

AddController = Controller.extend
  _saveResponse: (type, message, howToImprove) ->
    message = message?.trim()

    if !message? or isEmpty(message)
      alert('Message cannot be blank')
      return

    if type != 'glad' && !isPresent(howToImprove)
      alert('How To Improve Is Required')
      return

    response = @store.createRecord 'response',
      type:         type
      message:      message
      howToImprove: howToImprove

    response.save().then ->
      alert('Saved!')

  actions:
    saveGladResponse: ->
      @_saveResponse('glad', @get('glad'))
      @set 'glad', undefined

    saveSadResponse: ->
      @_saveResponse('sad', @get('sad'), @get('sadImprovement'))
      @setProperties
        sad:            undefined
        sadImprovement: undefined

    saveMadResponse: ->
      @_saveResponse('mad', @get('mad'), @get('madImprovement'))
      @setProperties
        mad:            undefined
        madImprovement: undefined

export default AddController
