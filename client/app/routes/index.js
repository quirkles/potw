import Route from '@ember/routing/route';
import {decodeJwt} from "../utils";

export default class IndexRoute extends Route {
  model() {
    try {
      const jwt = localStorage.getItem('jwt');
      const {sub} = decodeJwt(jwt) || {};
      if (sub) {
        return this.transitionTo('home')
      }
      throw new Error()
    } catch {
        return this.transitionTo('login')
    }
  }
}
