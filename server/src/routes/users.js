import { createUser, attemptLogin, findUserById } from '../controllers';

export default (app, models) => {
  const { userModel } = models;
  app.post('/users', createUser(userModel));
  app.post('/login', attemptLogin(userModel));
  app.get('/users/:userId', findUserById(userModel));
};
