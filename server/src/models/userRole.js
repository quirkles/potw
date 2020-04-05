import { STRING, UUID } from 'sequelize';

export default (sequelize) => sequelize.define(
  'userRole',
  {
    id: {
      type: UUID,
      primaryKey: true,
    },
    name: STRING,
  },
  {
    timestamps: false,
    underscored: true,
  },
);
