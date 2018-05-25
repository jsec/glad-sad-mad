'use strict';

module.exports = function(environment) {
  let ENV = {
    modulePrefix: 'glad-sad-mad',
    podModulePrefix: 'glad-sad-mad/pods',
    environment,
    rootURL: '/',
    locationType: 'auto',
    firebase: {
      apiKey: 'apikey',
      authDomain: 'authDomain',
      databaseURL: 'databaseURL',
      storageBucket: 'storageBucket'
    },
    EmberENV: {
      FEATURES: {
      },
      EXTEND_PROTOTYPES: {
        Date: false
      }
    },

    APP: {
    }
  };

  if (environment === 'development') {
  }

  if (environment === 'test') {
    ENV.locationType = 'none';

    ENV.APP.LOG_ACTIVE_GENERATION = false;
    ENV.APP.LOG_VIEW_LOOKUPS = false;

    ENV.APP.rootElement = '#ember-testing';
    ENV.APP.autoboot = false;
  }

  if (environment === 'production') {
  }

  return ENV;
};
