import Route from '@ember/routing/route';

import {decodeJwt} from '../utils';

export default class LoginRoute extends Route {
  model() {
    const jwt = localStorage.getItem('jwt');

    if (!jwt) {
      return this.transitionTo('login')
    }

    const decoded = decodeJwt(jwt) || {};
    const id = decoded.sub;
    const model = this.store.peekRecord('user', id);
    if (model) {
      return model
    } else {
      return this.store.findRecord('user', id)
        .catch((err) => {
          if (err.errors) {
            const errStatus = err.errors[0].status;
            if (errStatus === "404") {
              return this.transitionTo('signup')
            }
          } else {
            console.log('Error:', err)
          }
        })
    }
  }

  afterModel(user) {
    if (!user) {
      this.transitionTo('login')
    }
    if (user.userRole.name !== 'site_admin') {
      this.transitionTo('home')
    }
  }
}
