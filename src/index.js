const express = require('express');
const cors = require('cors');
const favicon = require('serve-favicon');
const path = require('path');
const app = express();
const routesConfig = require('./config/routes.config');
const apiConfig = require('./config/api.config');

// Middlewares
app.use(express.json());

// Routes
app.use(routesConfig.Base + routesConfig.Teams, require('./routes/teams'));

// Cors
app.use(cors());

// Body Parser
app.use(express.urlencoded({
    extended: true
}));

// Favicon
app.use(favicon(path.join(__dirname, '../public', 'favicon.ico')));

// Starting the server
app.listen(apiConfig.Port, apiConfig.Url, () => {
    console.log(`api running on ${apiConfig.Url}:${apiConfig.Port}`);
});