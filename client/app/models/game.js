import Model, { attr } from '@ember-data/model';

export default class game extends Model {
  @attr('string') name;
}
