import Route from '@ember/routing/route';

export default class AdminGamesRoute extends Route {
  model() {
    return {
      existingGames: [],
      newGame: {},
    }
  }
}
