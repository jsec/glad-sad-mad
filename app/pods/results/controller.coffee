import Controller from '@ember/controller'
import { filterBy } from '@ember/object/computed'

ResultsController = Controller.extend
  gladResponses: filterBy('model', 'isGlad', true)
  sadResponses:  filterBy('model', 'isSad', true)
  madResponses:  filterBy('model', 'isMad', true)

export default ResultsController
