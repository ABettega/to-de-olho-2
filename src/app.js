// Lib imports
const cors = require('cors');
const express = require('express');
const http = require('node:http');
const morgan = require('morgan');

// Utils imports
const logger = require('./logger');

const app = express();

app.use(cors({
  origin: '*',
  credentials: true,
}));
app.use(morgan('dev')); // Configure morgan module to log all requests.

const server = http.createServer(app);

const startServer = () => {
  const { address, port } = server.address();
  logger.info(`App running at http://${address}:${port}`);
};

server.listen(process.env.PORT || 3000, startServer);
