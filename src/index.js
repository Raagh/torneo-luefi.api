const express = require('express');
const apiConfig = require('./config/api.config');
const addRoutes = require('./middlewares/routes.middleware');
const addBase = require('./middlewares/base.middleware');
const app = express();

addBase(app);
addRoutes(app);

// Starting the server
app.listen(apiConfig.port, apiConfig.url, () => {
  console.log(`api running on ${apiConfig.url}:${apiConfig.port}`);
});