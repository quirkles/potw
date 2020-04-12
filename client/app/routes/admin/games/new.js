import Route from '@ember/routing/route';

export default class AdminGamesNewRoute extends Route {
  model() {
    const game = this.store.peekRecord('game', 'new-game');
    if (game) {
      return game
    }
    console.log('####')
    return this.store.createRecord('game', {
      id: 'new-game',
    })
  }
}
