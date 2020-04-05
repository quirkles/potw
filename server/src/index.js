import express from 'express';
import { uuid } from 'uuidv4';

import getDatabaseConnection from './getDatabaseConnection';

import logger from './logger';
import initRoutes from './routes';
import initModels from './models';

import { initPassport } from './authentication';

import { DB_CONNECTION_STRING } from './secrets';

const port = process.env.PORT || 5000;

const app = express();

initPassport(app);

app.use(
  express.json({
    type: ['application/json', 'application/vnd.api+json'],
  }),
);

app.use((req, res, next) => {
  res.header('Access-Control-Allow-Origin', 'http://localhost:4200'); // update to match the domain you will make the request from
  res.header(
    'Access-Control-Allow-Headers',
    'Origin, X-Requested-With, Content-Type, Accept',
  );
  next();
});

app.use((req, res, next) => {
  req.logger = logger.child({
    requestId: uuid(),
    requestMethod: req.method,
    requestUrl: req.url,
  });
  req.logger.info('Received request.');
  next();
});

const sequelizeInstance = getDatabaseConnection(DB_CONNECTION_STRING);

sequelizeInstance
  .authenticate()
  .then(() => {
    logger.info('Connection has been established successfully.');
    const models = initModels(sequelizeInstance);
    initRoutes(app, models);
  })
  .catch((err) => {
    logger.error('Unable to connect to the database:', err);
  });

app.listen(port);
logger.info(`Server litening on port ${port}`);
