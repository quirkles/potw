import { STRING, UUID } from 'sequelize';

export default (sequelize) => sequelize.define(
  'user',
  {
    id: {
      type: UUID,
      primaryKey: true,
    },
    email: {
      type: STRING,
      allowNull: false,
    },
    password: {
      type: STRING,
      allowNull: false,
    },
    username: {
      type: STRING,
      allowNull: false,
    },
    userRoleId: {
      type: UUID,
      references: {
        model: 'user_role',
        key: 'id',
      },
    },
  },
  {
    underscored: true,
  },
);
