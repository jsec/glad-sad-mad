`import Ember from 'ember'`
`import config from '../config/environment'`
`import Firebase from 'firebase'`
`import FirebaseAdapter from 'emberfire/adapters/firebase'`

ApplicationAdapter = FirebaseAdapter.extend
  firebase: new Firebase(config.firebase)

`export default ApplicationAdapter`
