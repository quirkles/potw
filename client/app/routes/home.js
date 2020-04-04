import Route from '@ember/routing/route';
import { inject as service } from '@ember/service';

const decodeJwt = (token) => {
  try {
    return JSON.parse(atob(token.split('.')[1]));
  } catch (e) {
    return null;
  }
};

export default class LoginRoute extends Route {
  @service store;
  model() {
    const jwt = localStorage.getItem('jwt');
    if (jwt) {
      const decoded = decodeJwt(jwt) || {};
      const id = decoded.sub;
      const model = this.store.peekRecord('user', id);
      if (model) {
        return model
      } else {
        console.log("Fetching user");
        return this.store.findRecord('user', id)
          .then(user => {
            console.log("USER FOUND:", user);
            if (user) {
              return user
            }
            console.log("NO USER FOUND")
              // return this.transitionTo('login')
          })
          .catch((err) => {
            const errStatus = err.errors[0].status;
            if (errStatus === "404") {
              return this.transitionTo('signup')
            }
          })
      }
    } else {
      console.log("NO JWT")
      // return this.transitionTo('login')
    }
  }
}
