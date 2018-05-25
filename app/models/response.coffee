import DS from 'ember-data'
import { equal } from '@ember/object/computed'

Response = DS.Model.extend
  type:         DS.attr('string')
  message:      DS.attr('string')
  howToImprove: DS.attr('string')

  isGlad: equal('type', 'glad')
  isSad:  equal('type', 'sad')
  isMad:  equal('type', 'mad')

export default Response
