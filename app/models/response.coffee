`import Ember from 'ember'`
`import DS from 'ember-data'`

Response = DS.Model.extend
  type:    DS.attr('string')
  message: DS.attr('string')

  isGlad:  Ember.computed.equal('type', 'glad').readOnly()
  isSad:   Ember.computed.equal('type', 'sad').readOnly()
  isMad:   Ember.computed.equal('type', 'mad').readOnly()

`export default Response`
