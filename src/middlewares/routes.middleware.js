const routesConfig = require('../config/routes.config');
const teamsRoute = require('../routes/teams');

module.exports = (app) => {
  app.use(routesConfig.base + routesConfig.teams, teamsRoute);

  return app;
};