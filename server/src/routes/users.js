import {
  createUser,
  attemptLogin,
  findUserById,
} from '../controllers';

export default (app) => {
  app.post('/users', createUser);
  app.post('/login', attemptLogin);
  app.get('/users/:userId', findUserById);
};
