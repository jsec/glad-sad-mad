`import Ember from 'ember'`
`import DS from 'ember-data'`

Response = DS.Model.extend
  type:         DS.attr('string')
  message:      DS.attr('string')
  howToImprove: DS.attr('string')

  isGlad:  Ember.computed.equal('type', 'glad')
  isSad:   Ember.computed.equal('type', 'sad')
  isMad:   Ember.computed.equal('type', 'mad')

`export default Response`
