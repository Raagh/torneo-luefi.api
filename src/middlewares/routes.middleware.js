const routesConfig = require('../config/routes.config');
const teamsRoute = require('../routes/teams.route');
const newsRoute = require('../routes/news.route');

module.exports = (app) => {
  app.use(routesConfig.base + routesConfig.teams, teamsRoute);
  app.use(routesConfig.base + routesConfig.news, newsRoute);

  return app;
};