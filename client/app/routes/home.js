import Route from '@ember/routing/route';

const decodeJwt = (token) => {
  try {
    return JSON.parse(atob(token.split('.')[1]));
  } catch (e) {
    return null;
  }
};

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
        this.store.findRecord('user', id)
          .then(user => {
            if (user) {
              return user
            }
            console.log("NO USER FOUND")
              // return this.transitionTo('login')
          })
          .catch((err) => console.log("Problem fetching user:", err));
      }
    } else {
      console.log("NO JWT")
      // return this.transitionTo('login')
    }
  }
}
