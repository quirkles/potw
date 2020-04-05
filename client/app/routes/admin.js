import Route from '@ember/routing/route';

import { decodeJwt } from '../utils';

export default class LoginRoute extends Route {
  model() {
    const jwt = localStorage.getItem('jwt');
    if (jwt) {
      const decoded = decodeJwt(jwt) || {};
      const id = decoded.sub;
      const model = this.store.peekRecord('user', id);
      if (model) {
        return model
      } else {
        return this.store.findRecord('user', id)
          .then(user => {
            if (user) {
              if(user.userRole.name === 'site_admin') {
                return user
              }
              return this.transitionTo('home')
            }
            return this.transitionTo('login')
          })
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
    } else {
      return this.transitionTo('login')
    }

  }
}
