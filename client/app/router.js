import EmberRouter from '@ember/routing/router';
import config from './config/environment';

export default class Router extends EmberRouter {
  location = config.locationType;
  rootURL = config.rootURL;
}

Router.map(function() {
  this.route('login');
  this.route('signup');
  this.route('home');
  this.route('admin', function() {
    this.route('games', function() {
      this.route('new');
      this.route('list');
    });
  });
  this.route('not-found', { path: '/*path' })
});
