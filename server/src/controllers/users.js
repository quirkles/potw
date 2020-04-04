import { omit } from 'ramda';
import { sign } from 'jsonwebtoken';

import { encrypt } from '../encrypt';
import { JWT_SECRET } from '../secrets';

const userToToken = omit(['password', 'confirm-password']);

export const findUserById = (userModel) => (req, res) => {
  try {
    userModel
      .findOne({
        where: {
          id: req.params.userId,
        },
        include: 'user_role',
      })
      .then((foundUserModel) => {
        if (foundUserModel) {
          const userData = userToToken(foundUserModel.toJSON());
          return res.json({
            data: {
              id: userData.id,
              type: 'user',
              attributes: userData,
            },
          });
        }
        const err = new Error(`No user found for id: ${req.params.userId},}`);
        err.code = 404;
        return res.status(404).send([err]);
      })
      .catch((err) => {
        console.log("#####", err); //eslint-disable-line
        res.status(500).send(err.errors);
      });
  } catch (e) {
    console.log("#####", e); //eslint-disable-line
    res.status(500).send(e);
  }
};

export const createUser = (userModel) => (req, res) => {
  const userData = req.body.data.attributes;
  userData.password = encrypt(userData.password);
  userModel
    .create(userData)
    .then((createdUser) => {
      const response = userToToken(createdUser.toJSON());
      const { username: user, id } = response;
      const token = sign({ user, sub: id }, JWT_SECRET);
      res.json({
        data: {
          id: response.id,
          type: 'user',
          attributes: response,
        },
        meta: { token },
      });
    })
    .catch((err) => {
      console.error(err);
      return res.status(500).send(err.errors);
    });
};

export const attemptLogin = (userModel) => (req, res) => {
  const postedCreds = req.body.data.attributes;
  const { username, password = '' } = postedCreds;
  const encryptedPassword = encrypt(password);
  userModel
    .findOne({
      where: {
        username,
        password: encryptedPassword,
      },
    })
    .then((foundUserModel) => {
      const userData = userToToken(foundUserModel.toJSON());
      const { username: user, id } = userData;
      const token = sign({ user, sub: id }, JWT_SECRET);
      return res.json({ meta: { token }, data: userData });
    })
    .catch((err) => {
      console.error(err);
      return res.status(500).send(err.errors);
    });
};
