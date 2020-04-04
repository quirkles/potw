import { STRING, UUID } from 'sequelize';

export default (sequelize) => sequelize.define('user_role', {
  id: {
    type: UUID,
    primaryKey: true,
  },
  name: STRING,
}, {
  timestamps: false,
  underscored: true,
});
