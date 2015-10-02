# Glad/Sad/Mad

A web application that provides a basic implementation of a "Glad/Sad/Mad" sprint retrospective activity.

Details of the activity can be found [here](http://retrospectivewiki.org/index.php?title=Glad,_Sad,_Mad).

## Rationale

This was borne out of a need to facilitate an interactive sprint retrospective activity with a remote team. The Glad/Sad/Mad activity is traditionally performed with sticky notes on a wall, which isn't feasible when dealing with a remote team. This application includes the functionality of a Glad/Sad/Mad activity while enabling remote developers to interact at the same level as an on-site team.

## Prerequisites

You will need the following things properly installed on your computer.

* [Git](http://git-scm.com/)
* [Node.js](http://nodejs.org/) (with NPM)
* [Bower](http://bower.io/)
* [Ember CLI](http://www.ember-cli.com/)
* [PhantomJS](http://phantomjs.org/)

## Installation

* `git clone https://github.com/jsec/glad-sad-mad`
* change into the new directory
* `npm install`
* `bower install`

## Running / Development

* `ember server`
* Visit your app at [http://localhost:4200](http://localhost:4200).

### Backend

Currently this application is wired up to use a Firebase backend coupled with the `emberfire` Ember CLI addon.

To hook the application to your Firebase instance, replace `YOUR_FIREBASE_APP_HERE` with your Firebase URL in the `firebase` section of `ember-cli-build.js`.

Feel free to extend the application to utilize your own backend if Firebase is not a viable option.

### Code Generators

Make use of the many generators for code, try `ember help generate` for more details

### Running Tests

* `ember test`
* `ember test --server`

### Building

* `ember build` (development)
* `ember build --environment production` (production)

### Deploying

Currently there is no de facto deployment step. PRs are always welcome!

## Further Reading / Useful Links

* [ember.js](http://emberjs.com/)
* [ember-cli](http://www.ember-cli.com/)
* Development Browser Extensions
  * [ember inspector for chrome](https://chrome.google.com/webstore/detail/ember-inspector/bmdblncegkenkacieihfhpjfppoconhi)
  * [ember inspector for firefox](https://addons.mozilla.org/en-US/firefox/addon/ember-inspector/)

