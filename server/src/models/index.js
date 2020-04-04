import initUserModel from './user';
import initRoleModel from './user_role';

let models;

export default (sequelizeInstance) => {
  if (models) {
    return models;
  }
  const userModel = initUserModel(sequelizeInstance);
  const userRoleModel = initRoleModel(sequelizeInstance);

  userRoleModel.hasMany(userModel);
  userModel.belongsTo(userRoleModel);

  models = {
    userModel,
    userRoleModel,
  };

  return models;
};
